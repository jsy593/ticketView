package com.jsy.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jsy.controller.BaseController;
import com.jsy.util.CommonUtil;
import com.jsy.util.HttpUtil;
import com.jsy.util.JsonUtil;

@Controller
public class SystemController extends BaseController {

	HttpUtil util = new HttpUtil();

	/**
	 * 跳转添加系统
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toAddSystem", method = RequestMethod.POST)
	public String toAddSystem(@RequestParam Map<String, String> data, Model model) {

		return "default/system/addSystem";
	}

	/**
	 * jsy 添加系统
	 * 
	 * @return
	 */
	@RequestMapping(value = "/addSystem", method = RequestMethod.POST)
	public String addSystem(@RequestParam Map<String, String> data, Model model) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/addSystem", data, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		model.addAttribute("result", result);
		return "forward:toSystemManager?uuid=" + data.get("userId");
	}

	/**
	 * yc 系统管理员维护部门
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toSystemManager")
	public String toSystemManager(Model model, @RequestParam Map<String, String> data) {
		model.addAttribute("titleNo", 0);
		if(CommonUtil.isEmpty(data.get("pageIndex"))){
			data.put("pageIndex", "1");
		}
		if(CommonUtil.isEmpty(data.get("pageSize"))){
			data.put("pageSize", "15");
		}
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectSystemList", data, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		if ("1".equals(result.get("state"))) {
			string2Data(result);
		}
		model.addAttribute("data", result);
		model.addAttribute("pageIndex", data.get("pageIndex"));
		return ".system.systemManagement";
	}

	/**
	 * yc 系统管理员维护部门
	 * 
	 * @return
	 */
	@RequestMapping(value = "/getSystemManager")
	@ResponseBody
	public Map<String, Object> getSystemManager(Model model, String uuid) {
		Map<String, String> data = new HashMap<String, String>();
		data.put("userId", uuid);

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectSystemList", data, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		string2Data(result);
		return result;
	}

	/**
	 * 审核系统
	 * 
	 * @return
	 */
	@RequestMapping(value = "/checkSystem", method = RequestMethod.POST)
	@ResponseBody
	public String checkSystem(@RequestParam Map<String, String> data, Model model) {

		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/checkSystem", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			state = Integer.parseInt(result.get("state").toString());
		}

		// 根据state值判断返回页面和
		if (state == 0 || state == -1) {
			return errorPage();
		}
		String str = String.valueOf(state);
		return str;
	}

	/**
	 * jsy 跳转系统列表页面
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/system")
	public String systemList(@RequestParam Map<String, String> data, Model model) {
		//添加标题高亮 
		model.addAttribute("titleNo", 1);
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
		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectSystemList", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			if (!CommonUtil.isEmpty(result)) {
				state = Integer.parseInt(result.get("state").toString());
				listmap = (List<Map<String, Object>>) result.get("list");

				// 根据state值判断返回页面和
				if (state == 0 || state == -1) {
					return errorPage();
				} else if (state == 1) {
					if (listmap != null) {
						for (Map<String, Object> map : listmap) {
							timeToDate(map);
						}
					}
				}
			}
		}
		if (!CommonUtil.isEmpty(data.get("content"))) {
			model.addAttribute("content", data.get("content"));
		}
		if (!CommonUtil.isEmpty(data.get("status"))) {
			model.addAttribute("status", data.get("status"));
		}
		model.addAttribute("systemList", result);
		model.addAttribute("pageIndex", data.get("pageIndex"));
		return ".system.system";

	}

	/**
	 * yc 修改系统状态
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateSystemStatus", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> changeSystemStatus(@RequestParam Map<String, String> data, Model model) {
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/updateSystemStatus", data,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		return result;
	}

	/**
	 * yc 部门管理员列表
	 * 
	 * @return
	 */
	@RequestMapping(value = "/selectDeptAdminList", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> selectDeptAdminList(@RequestParam Map<String, String> data, Model model) {
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectDeptAdminList", data,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		return result;
	}

	/**
	 * jsy 跳转系统详情
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/systemDetails")
	public String adminDetails(@RequestParam Map<String, String> data, Model model) {
		model.addAttribute("titleNo", 1);
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		Map<String, Object> map = null;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectSystemOne", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			state = Integer.parseInt(result.get("state").toString());
			map = (Map<String, Object>) result.get("data");
		}

		// 根据state值判断返回页面
		if (state == 0) {
			return errorPage();
		} else if (state == 1) {
			if (map != null) {
				timeToDate(map);
			}
		}
		model.addAttribute("system", map);
		return ".system.systemDetails";
	}

}
