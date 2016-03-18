package com.jsy.controller.admin;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
public class KnowledgeBaseController extends BaseController {

	HttpUtil util = new HttpUtil();

	/**
	 * 查询所有知识库列表
	 * 
	 * @param data
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/knowledgeBase")
	public String knowledgeBase(@RequestParam Map<String, String> data, Model model, HttpSession session) {
		model.addAttribute("titleNo", 4);
		if (CommonUtil.isEmpty(data.get("pageIndex"))) {
			data.put("pageIndex", "1");
		}
		if (CommonUtil.isEmpty(data.get("pageSize"))) {
			data.put("pageSize", "15");
		}
		int state = -1;
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		data.put("systemIndex", userInfo.get("systemIndex").toString());
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		List<Map<String, Object>> listmap = null;
		if (!CommonUtil.isEmpty(data.get("status"))) {
			Integer status = Integer.parseInt(data.get("status").toString());
			if (status == -1) {
				data.remove("status");
			}
		}
		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getKnowledgeBase", data, UTF8);
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
				}
			}
		}
		if (!CommonUtil.isEmpty(data.get("content"))) {
			model.addAttribute("content", data.get("content"));
		}
		if (!CommonUtil.isEmpty(data.get("status"))) {
			model.addAttribute("status", data.get("status"));
		}
		model.addAttribute("knowledgeBaseList", result);
		model.addAttribute("pageIndex", data.get("pageIndex"));
		return ".knowledgeBase.knowledgeBase";
	}

	/**
	 * 跳转添加系统
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/toAddKnowledgeBase")
	public String toAddKnowledgeBase(@RequestParam Map<String, String> data, Model model) {
		model.addAttribute("titleNo", 4);
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		List<Map<String, Object>> listmap = null;
		// 获取问题分类列表
		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getQuestionTypeList", data, UTF8);
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
				}
			}
		}
		model.addAttribute("questionTypeList", result);
		return ".knowledgeBase.addKnowledgeBase";
	}

	/**
	 * jsy 添加知识库
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/addKnowledgeBase", method = RequestMethod.POST)
	@ResponseBody
	public String addKnowledgeBase(@RequestParam Map<String, String> data, Model model, HttpSession session) {
		// 获取systemIndex
		Map<String, Object> user = (Map<String, Object>) session.getAttribute("userinfo");
		data.put("userId", user.get("uuid").toString());
		data.put("systemIndex", user.get("systemIndex").toString());
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		if (!CommonUtil.isEmpty(data.get("questionTypeId"))) {
			String questionTypeId = data.get("questionTypeId").toString();
			if ("-1".equals(questionTypeId)) {
				data.remove("questionTypeId");
			}
		}
		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/addKnowledgeBase", data, UTF8);
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
	 * jsy 修改知识库
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateKnowledgeBase", method = RequestMethod.POST)
	@ResponseBody
	public String updateKnowledgeBase(@RequestParam Map<String, String> data, Model model) {

		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/updateKnowledgeBase", data, UTF8);
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
	 * jsy 查看知识库详情
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/knowledgeBaseDetails")
	public String knowledgeBaseDetails(@RequestParam Map<String, String> data, Model model, HttpSession session) {
		model.addAttribute("titleNo", 4);
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		data.put("systemIndex", userInfo.get("systemIndex").toString());
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		Map<String, Object> map = null;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getKnowledgeBaseOne", data, UTF8);
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
			}
		}
		model.addAttribute("knowledgeBase", map);
		return ".knowledgeBase.knowledgeBaseDetails";
	}
}
