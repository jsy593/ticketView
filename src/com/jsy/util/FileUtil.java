package com.jsy.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

public class FileUtil {
	/** 
     * 新建目录. 
     *  
     * @author bota
     * @param path 文件路径 
     * @throws Exception 
     */  
    public static void createDirectory(String path) throws Exception {  
        if (path == null || path.equals("")) {  
            return;  
        }  
        try {  
            // 获得文件对象  
            File f = new File(path);  
            if (!f.exists()) {  
                // 如果路径不存在,则创建  
                f.mkdirs();  
            }  
        } catch (Exception e) {  
            throw e;  
        }  
    } 
    
    
    
    
    /**
     * 上传图片，返回修改数据库的信息map
     * @param request
     * @param folder 保存的文件夹
     * @param uuid 
     * @return
     */
    public static Map<String,String> uploadImage(HttpServletRequest request, String folder,String uuid){
    	Map<String, String> userMap = new HashMap<String, String>();
    	userMap.put("uuid", uuid);
    	String path = null;
    	try{
    	//使用Apache文件上传组件处理文件上传步骤：
        //1、创建一个DiskFileItemFactory工厂
         DiskFileItemFactory factory = new DiskFileItemFactory();
         //2、创建一个文件上传解析器
          ServletFileUpload upload = new ServletFileUpload(factory);
          //解决上传文件名的中文乱码
         upload.setHeaderEncoding("UTF-8"); 
          //3、判断提交上来的数据是否是上传表单的数据
          if(!ServletFileUpload.isMultipartContent(request)){
             //按照传统方式获取数据
              return userMap;
          }
          //4、使用ServletFileUpload解析器解析上传数据，解析结果返回的是一个List<FileItem>集合，每一个FileItem对应一个Form表单的输入项
          List<FileItem> list = upload.parseRequest(request);
          for(FileItem item : list){
            //如果fileitem中封装的是普通输入项的数据
            if(item.isFormField()){
                  String name = item.getFieldName();
                 //解决普通输入项的数据的中文乱码问题
                String value = item.getString("UTF-8");
                 //value = new String(value.getBytes("iso8859-1"),"UTF-8");
                  userMap.put(name, value);
                  
              }else{//如果fileitem中封装的是上传文件
                 //得到上传的文件名称，
                 String filename = item.getName();
                  System.out.println(filename);
               if(filename==null || filename.trim().equals("")){
                    continue;
                  }
                  //注意：不同的浏览器提交的文件名是不一样的，有些浏览器提交上来的文件名是带有路径的，如：  c:\a\b\1.txt，而有些只是单纯的文件名，如：1.txt
                  //处理获取到的上传文件的文件名的路径部分，只保留文件名部分
                 filename = filename.substring(filename.lastIndexOf("\\")+1);
                 //获取item中的上传文件的输入流
                  InputStream in = item.getInputStream();
                  //创建一个文件输出流
                  String tempPath =request.getServletContext().getRealPath("/") + folder + "/" + uuid;
                  File localFile = new File(tempPath);
                  if(!localFile.exists()){
                      localFile.mkdirs();
                  }
                  String prefix = filename.substring(filename.lastIndexOf(".")+1);
                  String fileName =  uuid + "." + prefix;
                  FileOutputStream out = new FileOutputStream(tempPath+"/"+fileName);
          			
                  //创建一个缓冲区
                  byte buffer[] = new byte[1024];
                  //判断输入流中的数据是否已经读完的标识
                  int len = 0;
                  //循环将输入流读入到缓冲区当中，(len=in.read(buffer))>0就表示in里面还有数据
                  while((len=in.read(buffer))>0){
                      //使用FileOutputStream输出流将缓冲区的数据写入到指定的目录(savePath + "\\" + filename)当中
                      out.write(buffer, 0, len);
                  }
                  
            	  
      				//关闭输入流
      				in.close();
      				//关闭输出流
      				out.close();
      				//删除处理文件上传时生成的临时文件
      				item.delete();
      				path = folder + "/" + uuid + "/" + fileName;
      				userMap.put("imageUrl", path);
      			}
             }
    	}catch (Exception e) {
             e.printStackTrace();
             
         }
    	return userMap;
    }
    
    
    
    
    
    
    
    
    /**
     * Spring MVC文件上传,返回的是经过处理的path+fileName
     * @param request    request
     * @param folder    上传文件夹
     * @param userid    用户名
     * @return
     */
    public static String upload(HttpServletRequest request, String folder, String userid){
        String file_url = "";
        //创建一个通用的多部分解析器
        CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(request.getSession().getServletContext());
        
        //判断 request 是否有文件上传,即多部分请求
        if(multipartResolver.isMultipart(request)){
            //转换成多部分request
            MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest)request;
            //取得request中的所有文件名
            Iterator<String> iter = multiRequest.getFileNames();
            while(iter.hasNext()){
                //取得上传文件
                MultipartFile file = multiRequest.getFile(iter.next());
                String prefix = getFilePrefix(file);
                if(file != null){
                    //取得当前上传文件的文件名称
                    String myFileName = file.getOriginalFilename();
                    //如果名称不为"",说明该文件存在，否则说明该文件不存在
                    if(myFileName.trim() !=""){
                        System.out.println(myFileName);
                        //重命名上传后的文件名
                        String fileName =  userid + "." + prefix;
                        //定义上传路径,格式为 upload/bota/bota.jpg
                        String path = request.getServletContext().getRealPath("/") + folder + "/" + userid;
                        System.out.println("request.getServletContext().getRealPath:"+request.getServletContext().getRealPath("/"));
                        System.out.println(folder);
                        System.out.println(userid);
                        File localFile = new File(path, fileName);
                        if(!localFile.exists()){
                            localFile.mkdirs();
                        }
                        try {
                            file.transferTo(localFile);
                            file_url = folder + "/" + userid + "/" + fileName;
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
        return file_url;
    }
    
    /**
     * 获取图片后缀
     * @param file
     * @return
     */
    public static String getFilePrefix(MultipartFile file){
        String fileName = file.getOriginalFilename();
        String suffix = fileName.substring(fileName.lastIndexOf(".")+1);
        return suffix;
    }
    
}
