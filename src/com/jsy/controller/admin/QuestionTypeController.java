package com.jsy.controller.admin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jsy.controller.BaseController;
import com.jsy.util.CommonUtil;
import com.jsy.util.DateUtil;
import com.jsy.util.HttpUtil;
import com.jsy.util.JsonUtil;
import com.sun.org.glassfish.gmbal.ParameterNames;

/**
 * 用户
 * 
 * @author 易川
 * @datetime 2015年9月12日上午10:31:41
 */
@Controller
public class QuestionTypeController extends BaseController {

	HttpUtil util = new HttpUtil();

	/**
	 * yc 跳转到问题分类list(大)
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toQuestionType")
	public String toQuestionType(Model model,@RequestParam Map<String, String> data) {
		model.addAttribute("titleNo", 4);
		if (CommonUtil.isEmpty(data.get("systemIndex"))) {
			data.put("systemIndex", "-1");
		}
		if (CommonUtil.isEmpty(data.get("pageIndex"))) {
			data.put("pageIndex", "1");
		}
		if (CommonUtil.isEmpty(data.get("pageSize"))) {
			data.put("pageSize", "15");
		}
		
		data.put("parentId", "0");
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getQuestionTypeList", data,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		string2Data(result);
		model.addAttribute("data", result);
		model.addAttribute("systemIndex", data.get("systemIndex"));
		model.addAttribute("pageIndex", data.get("pageIndex"));

		return ".questionType.questionTypeManager";
	}

	/**
	 * yc 跳转到问题分类list(小)
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toQuestionTypeSmall")
	public String toQuestionTypeSmall(Model model, @RequestParam Map<String, String> data) {
		model.addAttribute("titleNo", 5);
		
		if (CommonUtil.isEmpty(data.get("parentId"))) {
			data.put("parentId", "-1");
		}
		if (CommonUtil.isEmpty(data.get("pageIndex"))) {
			data.put("pageIndex", "1");
		}
		if (CommonUtil.isEmpty(data.get("pageSize"))) {
			data.put("pageSize", "15");
		}
		
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getQuestionTypeList", data,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		string2Data(result);
		model.addAttribute("data", result);
		model.addAttribute("parentId", data.get("parentId"));
		model.addAttribute("pageIndex", data.get("pageIndex"));
		return ".questionType.questionTypeManagerSmall";
	}

	/**
	 * yc 跳转到问题分类单挑
	 * 
	 * @return
	 */
	@RequestMapping(value = "/getQuestionTypeDetail")
	public String getQuestionTypeDetail(Model model, String uuid) {
		model.addAttribute("titleNo", 0);
		Map<String, String> data = new HashMap<String, String>();
		data.put("uuid", uuid);

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getQuestionTypeOne", data,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		model.addAttribute("data", result.get("data"));

		return ".questionType.questionTypeDetail";
	}

	/**
	 * yc 添加问题分类
	 * 
	 * @return
	 */
	@RequestMapping(value = "/addQuestionType")
	public String addQuestionType(Model model, @RequestParam Map<String, String> dataMap) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/addQuestionType", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		model.addAttribute("data", result);

		return "redirect:toQuestionType?systemIndex=" + dataMap.get("systemIndex").toString();
	}
	/**
	 * yc 添加问题分类(小)
	 * 
	 * @return
	 */
	@RequestMapping(value = "/addQuestionTypeSmall")
	public String addQuestionTypeSmall(Model model, @RequestParam Map<String, String> dataMap) {
		
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/addQuestionType", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		model.addAttribute("data", result);
		
		return "redirect:toQuestionTypeSmall?parentId=" + dataMap.get("parentId").toString();
	}

	/**
	 * yc 改变分类状态
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateQuestionType")
	@ResponseBody
	public Map<String, Object> updateQuestionType(Model model, @RequestParam Map<String, String> dataMap) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/updateQuestionType", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result;
	}
}
