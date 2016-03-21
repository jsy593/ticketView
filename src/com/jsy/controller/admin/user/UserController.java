package com.jsy.controller.admin.user;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jsy.controller.BaseController;
import com.jsy.util.CommonUtil;
import com.jsy.util.ConstantUtil;
import com.jsy.util.FileUtil;
import com.jsy.util.HttpUtil;
import com.jsy.util.JsonUtil;
import com.jsy.util.MD5Util;

/**
 * 用户
 * 
 * @author 易川
 * @datetime 2015年9月12日上午10:31:41
 */
@Controller
public class UserController extends BaseController {

	HttpUtil util = new HttpUtil();

	/**
	 * jsy 登陆
	 * 
	 * @param data
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/login")
	@ResponseBody
	public String login(@RequestParam Map<String, String> data, HttpSession session) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/login", data, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		session.setAttribute("userinfo", result.get("userInfo"));
		session.setAttribute("roleinfo", result.get("roleInfo"));
		session.setAttribute("departmentinfo", result.get("departmentInfo"));
		System.out.println(result.get("state").toString());
		return result.get("state").toString();
	}

	/**
	 * jsy 注销
	 * 
	 * @param data
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {

		session.setAttribute("userinfo", null);
		session.setAttribute("roleinfo", null);
		session.setAttribute("departmentinfo", null);

		return "redirect:/toLogin";
	}

	/**
	 * jsy 跳转到登陆页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toLogin")
	public String toLogin() {
		return "login";
	}

	/**
	 * jsy 跳转管理员列表页面
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/admin")
	public String adminList(@RequestParam Map<String, String> data, Model model) {
		// 添加标题高亮
		model.addAttribute("titleNo", 0);

		if (CommonUtil.isEmpty(data.get("pageIndex"))) {
			data.put("pageIndex", "1");
		}
		if (CommonUtil.isEmpty(data.get("pageSize"))) {
			data.put("pageSize", "15");
		}

		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		List<Map<String, Object>> listmap = null;
		if (!CommonUtil.isEmpty(data.get("status"))) {
			Integer status = Integer.parseInt(data.get("status").toString());
			if (status == -1) {
				data.remove("status");
			}
		}
		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectAdminList", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			state = Integer.parseInt(result.get("state").toString());
			listmap = (List<Map<String, Object>>) result.get("list");
		}

		// 根据state值判断返回页面和
		if (state == 0 || state == -1) {
			return errorPage();
		} else if (state == 1) {
			if (listmap != null) {
				for (Map<String, Object> map : listmap) {
					timeToDate(map);
					sexToStr(map);
				}
			}
		}
		if (!CommonUtil.isEmpty(data.get("content"))) {
			model.addAttribute("content", data.get("content"));
		}
		if (!CommonUtil.isEmpty(data.get("status"))) {
			model.addAttribute("status", data.get("status"));
		}
		model.addAttribute("adminList", result);
		model.addAttribute("pageIndex", data.get("pageIndex"));
		return ".user.admin";
	}

	/**
	 * jsy 员工列表
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/toPeopleManage")
	public String toPeopleManage(@RequestParam Map<String, String> data, Model model) {
		model.addAttribute("titleNo", 8);
		if (CommonUtil.isEmpty(data.get("pageIndex"))) {
			data.put("pageIndex", "1");
		}
		if (CommonUtil.isEmpty(data.get("pageSize"))) {
			data.put("pageSize", "1");
		}
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		List<Map<String, Object>> listmap = null;
		data.remove("base");
		data.remove("fullPath");
		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectStaffList", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			state = Integer.parseInt(result.get("state").toString());
			listmap = (List<Map<String, Object>>) result.get("list");
		}

		// 根据state值判断返回页面和
		if (state == 0) {
			return errorPage();
		} else if (state == 1) {
			if (listmap != null) {
				for (Map<String, Object> map : listmap) {
					timeToDate(map);
					sexToStr(map);
				}
			}
		}
		if (!CommonUtil.isEmpty(data.get("content"))) {
			model.addAttribute("content", data.get("content"));
		}
		if (!CommonUtil.isEmpty(data.get("status"))) {
			model.addAttribute("status", data.get("status"));
		}
		model.addAttribute("userList", result);
		model.addAttribute("pageIndex", data.get("pageIndex"));
		return ".user.staff";
	}

	/**
	 * jsy 跳转用户详情
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/adminDetails")
	public String adminDetails(@RequestParam Map<String, String> data, Model model) {
		model.addAttribute("titleNo", 0);
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		Map<String, Object> map = null;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectUserOne", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			state = Integer.parseInt(result.get("state").toString());
			map = (Map<String, Object>) result.get("data");
		}

		// 根据state值判断返回页面和
		if (state == 0) {
			return errorPage();
		} else if (state == 1) {
			if (map != null) {
				timeToDate(map);
				sexToStr(map);
			}
		}
		model.addAttribute("user", map);
		return ".user.adminDetails";
	}

	/**
	 * jsy 跳转用户详情
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/staffDetails")
	public String staffDetails(@RequestParam Map<String, String> data, Model model) {
		model.addAttribute("titleNo", 3);
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		Map<String, Object> map = null;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectUserOne", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			if (!CommonUtil.isEmpty(result)) {
				state = Integer.parseInt(result.get("state").toString());
				map = (Map<String, Object>) result.get("data");
			}
		}

		// 根据state值判断返回页面和
		if (state == 0 || state == -1) {
			return errorPage();
		} else if (state == 1) {
			if (map != null) {
				timeToDate(map);
				sexToStr(map);
			}
		}
		model.addAttribute("user", map);
		return ".user.staffDetails";
	}

	/**
	 * 
	 * jsy 审核用户
	 * 
	 * @param data
	 * @param model
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/changeUserStatus", method = RequestMethod.POST)
	@ResponseBody
	public String checkUser(@RequestParam Map<String, String> data, Model model) {

		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/checkUser", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			if (!CommonUtil.isEmpty(result)) {
				state = Integer.parseInt(result.get("state").toString());
			}
		}

		// 根据state值判断返回页面和
		if (state == 0 || state == -1) {
			return errorPage();
		}
		String str = String.valueOf(state);
		return str;
	}

	/**
	 * 
	 * jsy 注册
	 * 
	 * @param data
	 * @param model
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/regist", method = RequestMethod.POST)
	@ResponseBody
	public String regist(@RequestParam Map<String, String> data, Model model) {

		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/regist", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			if (!CommonUtil.isEmpty(result)) {
				state = Integer.parseInt(result.get("state").toString());
			}
		}

		// 根据state值判断返回页面和
		if (state == 0 || state == -1) {
			return errorPage();
		}
		String str = String.valueOf(state);
		return str;
	}

	/**
	 * 进入主页
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toHome")
	public String toHome() {
		return "home";
	}

	/**
	 * jsy 跳转注册页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toRegist")
	public String toRegist() {

		return ".user.regist";
	}

	/**
	 * jsy 跳转添加部门页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toAddDept", method = RequestMethod.POST)
	public String toAddDpt() {

		return ".AddDepartmentPage";
	}

	/**
	 * jsy 获取用户
	 * 
	 * @param data
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/getUser", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> getUser(@RequestParam Map<String, String> data, Model model) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectUserBydept", data, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result;
	}

	/**
	 * jsy 添加员工
	 * 
	 * @param data
	 * @param session
	 * @return
	 */
	@RequestMapping(value = "/addUser", method = RequestMethod.POST)
	public String addUser(@RequestParam Map<String, String> data) {
		data.put("code", "staff");
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/addUser", data, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return "redirect:toPeopleManage?departmentId=" + data.get("departmentId").toString();
	}
	
	/**
	 *个人中心页面
	 *jsy 
	 */
	@RequestMapping(value="/toPersonalCenter")
	public String personalCenter(Model model,HttpSession session) {
		model.addAttribute("titleNo", 13);
		if(CommonUtil.isEmpty(session.getAttribute("userinfo"))){
			return "redirect:/toLogin"; 
		}
		
		return ".personalCenter.personalCenter";
	}

	
	/**
	 *修改密码页面
	 *jsy 
	 */
	@RequestMapping(value="/toUpdatePwdMsg")
	public String updatePage(Model model) {
		// 添加标题高亮
		model.addAttribute("titleNo", 14);
		return ".personalCenter.updatePwd";
	}

	/**
	 *找回密码页面
	 *jsy 
	 */
	@RequestMapping(value="/toFindPwd")
	public String findPwd(Model model) {
		// 添加标题高亮
		model.addAttribute("titleNo", 15);
		return ".personalCenter.findPwd";
	}
	
	
	//判断// 判断密码
	//加密
	//返回
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/checkPwd",method=RequestMethod.POST)
	@ResponseBody
	public String checkPwd(@RequestParam String oldPassword,HttpSession session){
		Map<String, Object> map= new HashMap<String, Object>();
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		String  oldmd5 = MD5Util.string2MD5(oldPassword);
		if (userInfo.get("password").toString().equals(oldmd5)) {
			return ConstantUtil.RETURN_SUCCESS;
		}else{
			return ConstantUtil.RETURN_FAIL;
		}
		
	}
	
	//修改
	
	@SuppressWarnings("unchecked")
	/**
	 *修改密码
	 *jsy
	 */
	@RequestMapping(value="/updatePwd",method=RequestMethod.POST)
	@ResponseBody
	public String updatePasswordById(@RequestParam String newPassword, HttpSession session){
		Map<String, String> map= new HashMap<String, String>();
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		newPassword = MD5Util.string2MD5(newPassword);
		map.put("password", newPassword);
		map.put("uuid", userInfo.get("uuid").toString());
		map.put("status", userInfo.get("status").toString());
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/updateUser", map, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result.get("state").toString();
			
	}
	/**
	 *发送验证码
	 *jsy
	 */
	@RequestMapping(value="/sendCode",method=RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> sendCode(@RequestParam Map<String, String> data, Model model){
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/sendCode", data, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		return result;
	}
	
	/**
	 * 修改个人资料
	 * @param request
	 * @param response
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("updateUserInfo")
	public String updateUserInfo(@RequestParam Map<String, String> data,HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		@SuppressWarnings("unchecked")
		Map<String, Object> userMap = (Map<String, Object>) session.getAttribute("userinfo");
		System.out.println("Stat :" + userMap.get("status"));
		String uuid = userMap.get("uuid").toString();
		Map<String, String> resultMap  = FileUtil.uploadImage(request, "upload", uuid);
		String str = userMap.get("status").toString();
		System.out.println("status:"+str);
		resultMap.put("status", userMap.get("status").toString());
		System.out.println(resultMap);
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/updataUserIngo", resultMap, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		if(result.get("state").toString().equals("1")){
			userMap.put("sex", resultMap.get("sex"));
			userMap.put("phone", resultMap.get("phone"));
			userMap.put("remark", resultMap.get("remark"));
			userMap.put("email", resultMap.get("email"));
			userMap.put("realName", resultMap.get("realName"));
			userMap.put("imageUrl", resultMap.get("imageUrl"));
			session.setAttribute("userinfo", userMap);
		}else{
			request.setAttribute("error", "修改失败！");
		}
			
		return ".personalCenter.personalCenter";
	}
}
