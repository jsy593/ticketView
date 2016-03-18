package com.jsy.controller.admin;

import java.util.HashMap;
import java.util.Map;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.jsy.controller.BaseController;
import com.jsy.util.HttpUtil;

/**
 * 后台相关
 * @author zhangyu
 *
 */
@Controller
public class IndexController extends BaseController{
	
	/**
	 * 登录
	 * @return  
	 * 
	 */
	@RequestMapping("/admin/login")
	public String jumpIndex(){
		//抓取后台数据
		HttpUtil util = new HttpUtil();
		Map<String,String> map = new HashMap<String, String>();
		map.put("username", "张三");
		
		String path = this.servicePath;
		Map<String, Object> result = util.sendPostSSLRequest(path + "/SRTreasure/userLogin.htm", map, "UTF-8");
		
		Object object = result.get("respContent");
		System.out.println(result.size());
		return "/user/index";
	}
}
