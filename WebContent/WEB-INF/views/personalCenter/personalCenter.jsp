<%@ page language="java" contentType="text/html; charset=utf-8"  pageEncoding="utf-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  <div class="row">
       <div class="col-lg-12">
           <section class="panel">
               <header class="panel-heading">
                     <a class="" href="toPersonalCenter">
                          <span>个人中心</span>
                      </a>
                      <span>></span>
                      <a class="" href="toPersonalCenter">
                          <span style="color:black">个人信息</span>
                      </a>
               </header>
               
               <div class="panel-body" style="margin-left: auto;margin-right: auto;">
                   <form class="form-horizontal col-lg-6" role="form" action="updateUserInfo" enctype="multipart/form-data" method="post" onsubmit="return checkFileType();">
                   				 <div class="form-group">
                                      <label  class="col-lg-2 control-label">头像：</label>
                                      <!-- 修改头像开始 -->
			                           		 <img src="res/${userinfo.imageUrl }" class="js_imgUrl img-circle"  width="140" height="140" onclick="$('input[class=js_file]').click();">
			                           		 <input class="js_file" id="js_upload_file" style="display:none" type="file" name="imgFile" multiple>
			                        <!-- 修改头像结束 -->
                                  </div>
                   				
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">账号：</label>
                                      <div class="col-lg-6">
                                       <label  class=" control-label">${userinfo.username}</label>
                                      </div>
                                  </div>
                                  
                                   <div class="form-group">
                                      <label  class="col-lg-2 control-label">姓名：</label>
                                      <div class="col-lg-6">
                                        	<label  class="control-label js_label">${userinfo.realName}</label>
                                          <input type="text" name="realName" style="display:none" value="${userinfo.realName}" class="form-control js_input" id="js_realName" placeholder=" 请输入真实的名字">
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">邮箱：</label>
                                      <div class="col-lg-6">
                                      	 <label  class="control-label js_label">${userinfo.email}</label>
                                          <input type="text" name="email" style="display:none" value="${userinfo.email}" class="form-control js_input" id="js_email" placeholder="请输入邮箱 ">
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">电话：</label>
                                      <div class="col-lg-6">
                                       	<label  class=" control-label js_label">${userinfo.phone}</label>
                                          <input type="text"  name="phone" style="display:none" value="${userinfo.phone}" class="form-control js_input" id="js_phone" placeholder="请输入电话 ">
                                      </div>
                                  </div>
                                  
                                   <div class="form-group">
                                      <label  class="col-lg-2 control-label">备注：</label>
                                      <div class="col-lg-6">
                                           <label  class="control-label js_label">${userinfo.remark}</label>
                                          <input type="text" name="remark" style="display:none" value="${userinfo.remark}" class="form-control js_input" id="js_remark" placeholder="请输入备注 ">
                                      </div>
                                  </div>
                                  
                                  <div class="form-group">
                                      <label  class="col-lg-2 control-label">性别：</label>
                                       <div class="col-lg-6">
                                      
                                   		<c:if test="${userinfo.sex  == 0}">
	                                   		<label  class="control-label col-lg-4">
												<input name="sex" id="js_sex1" style="display:none" type="radio" value="0" checked class="js_input flat-red" />
												<span class="lbl">女</span>
											</label>
											
											<label  class="control-label col-lg-4 js_label_sex" style="display:none">
												<input name="sex" id="js_sex1 " type="radio" value="1" class="js_input flat-red" />
												<span class="lbl">男</span>
											</label>
										</c:if>


									<c:if test="${userinfo.sex  == 1}">
										<label  class="control-label col-lg-4 js_label_sex" style="display:none">
												<input name="sex" id="js_sex1" type="radio" value="0" class="js_input flat-red" />
												<span class="lbl">女</span>
										</label>
										<label  class="control-label col-lg-4">
											<input name="sex"  id="js_sex2 " style="display:none" type="radio" value="1" checked class="js_input flat-red" />
											<span class="lbl">男</span>
										</label>
									</c:if>	
                                     </div> 	
                                  </div>
                                  
                                  
                                   <div class="form-group">
                                      <div class="col-lg-offset-2 col-lg-10">
                                      	 <input type="button" class="btn btn-success js_button_update" value="修改" onclick="showInput()"></input>
                                          <button type="submit" class="btn btn-danger js_button_confirm" style="display:none">确定</button>
                                      </div>
                                  </div>
                   </form>

               </div>
           </section>

       </div>
   </div>
	<script type="text/javascript" src="res/views/default/js/jquery-1.8.3.min.js"></script>
	<script type="text/javascript" src="res/views/default/js/personalCenter/personalCenter.js"></script>
	<script type="text/javascript" src="res/views/default/js/basic.js"></script>

