package com.jsy.controller.admin.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jsy.controller.BaseController;
import com.jsy.util.CommonUtil;
import com.jsy.util.HttpUtil;
import com.jsy.util.JsonUtil;

/**
 * 用户
 * 
 * @author 易川
 * @datetime 2015年9月12日上午10:31:41
 */
@Controller
public class DepartmentController extends BaseController {

	HttpUtil util = new HttpUtil();

	/**
	 * yc 系统管理员维护部门
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/toDepartmentManager")
	public String toDepartmentManager(Model model, @RequestParam Map<String, String> data,HttpSession session) {
		model.addAttribute("titleNo", 3);
		if (CommonUtil.isEmpty(data.get("pageIndex"))) {
			data.put("pageIndex", "1");
		}
		if (CommonUtil.isEmpty(data.get("pageSize"))) {
			data.put("pageSize", "5");
		}
		Map<String, Object> userMap = (Map<String, Object>) session.getAttribute("userinfo");
		System.out.println(userMap);
		data.put("userId", userMap.get("uuid").toString());
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectDept", data, UTF8);
		if(sendPostMapRequest != null && sendPostMapRequest.size() > 0){
			Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			string2Data(result);
			model.addAttribute("data", result);
			
			if(result.get("systemIndex") != null){
				model.addAttribute("systemIndex", result.get("systemIndex"));
			}else{
				model.addAttribute("systemIndex", data.get("systemIndex"));
			}
			
			model.addAttribute("pageIndex", data.get("pageIndex"));
			model.addAttribute("content", data.get("content"));
		}
		
		return ".department.departmentManager";
	}

	/**
	 * yc 获取部门列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/getDepartmentManager")
	@ResponseBody
	public Map<String, Object> getDepartmentManager(Model model, String systemIndex) {
		Map<String, String> data = new HashMap<String, String>();
		data.put("systemIndex", systemIndex);

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectDept", data, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		string2Data(result);
		model.addAttribute("data", result);
		model.addAttribute("systemIndex", systemIndex);
		return result;
	}

	/**
	 * yc 系统管理员维护部门详细信息
	 * 
	 * @return
	 */
	@RequestMapping(value = "/getDepartmentDetail")
	public String getDepartmentDetail(Model model, String uuid) {
		Map<String, String> data = new HashMap<String, String>();
		data.put("uuid", uuid);

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectDeptOne", data, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		model.addAttribute("data", result.get("data"));

		return ".department.departmentDetail";
	}

	/**
	 * yc 获取问题分类
	 * 
	 * @return
	 */
	@RequestMapping(value = "/getQuestionType")
	@ResponseBody
	public Map<String, Object> getQuestionType(Model model, @RequestParam Map<String, String> dataMap) {
		dataMap.put("status", "1");
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getQuestionTypeList", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result;
	}

	/**
	 * yc 查询当前部门管理员
	 * 
	 * @return
	 */
	@RequestMapping(value = "/selectDeptAdmin")
	@ResponseBody
	public Map<String, Object> selectDeptAdmin(Model model, @RequestParam Map<String, String> dataMap) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectDeptAdmin", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result;
	}

	/**
	 * yc 修改部门管理员
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateDeptAdmin")
	@ResponseBody
	public Map<String, Object> updateDeptAdmin(Model model, @RequestParam Map<String, String> dataMap) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/becomeDeptAdmin", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result;
	}

	/**
	 * yc 修改部门与问题分类的对应关系
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateDeptToQuestionType")
	@ResponseBody
	public Map<String, Object> updateDeptToQuestionType(Model model, @RequestParam Map<String, String> dataMap) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/updateQuestionType", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result;
	}

	/**
	 * yc 修改部门
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateDept")
	@ResponseBody
	public Map<String, Object> updateDept(Model model, @RequestParam Map<String, String> dataMap) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/updateManageDept", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result;
	}

	/**
	 * yc 添加部门
	 * 
	 * @return
	 */
	@RequestMapping(value = "/addDept")
	public String addDept(Model model, @RequestParam Map<String, String> dataMap) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/addDept", dataMap, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return "forward:toDepartmentManager?systemId=" + dataMap.get("systemId");
	}
}
