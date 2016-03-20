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
public class QuickReplyController extends BaseController{

	
	HttpUtil util = new HttpUtil();
/**
 * 查询所有知识库列表
 * @param data
 * @param model
 * @return
 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/quickReply")
	public String knowledgeBase(@RequestParam Map<String, String> data, Model model,HttpSession session) {
		// 添加标题高亮
		model.addAttribute("titleNo", 12);
		int state = -1;
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		data.put("userId",userInfo.get("uuid").toString());
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		List<Map<String, Object>> listmap = null;
		if(!CommonUtil.isEmpty(data.get("status"))){
			Integer status = Integer.parseInt(data.get("status").toString());
			if(status == -1){
				data.remove("status");
			}
		}
		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/quickReply", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			state = Integer.parseInt(result.get("state").toString());
			listmap = (List<Map<String, Object>>) result.get("list");
		}

		// 根据state值判断返回页面
		if(state == 0 || state == -1){
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
		model.addAttribute("quickReplyList", result);
		return ".quickReply.quickReply";
	}

	/**
	 * 跳转添加快捷回复
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toAddQuickReply")
	public String toAddQuickReply(@RequestParam Map<String, String> data, Model model) {
		
		return "default/quickReply/addQuickReply";
	}
	
	/**
	 * jsy 添加快捷回复
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/addQuickReply", method = RequestMethod.POST)
	@ResponseBody
	public String addQuickReply(@RequestParam Map<String, String> data, Model model, HttpSession session) {
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		data.put("userId",userInfo.get("uuid").toString());
		data.put("status", "1");

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/addQuickReply", data, UTF8);
		if(!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))){
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			if(!CommonUtil.isEmpty(result)){
				state = Integer.parseInt(result.get("state").toString());
			}
		}
		
		// 根据state值判断返回页面
		if(state == 0 || state == -1){
			return errorPage();
		}
		String str = String.valueOf(state);
			return str;
	}
	
	/**
	 * jsy 修改快捷回复
	 * 
	 * @return
	 */
	@RequestMapping(value = "/updateQuickReply", method = RequestMethod.POST)
	@ResponseBody
	public String updateQuickReply(@RequestParam Map<String, String> data, Model model) {

		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		
		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/updateQuickReply", data, UTF8);
		if(!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))){
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			if(!CommonUtil.isEmpty(result)){
				state = Integer.parseInt(result.get("state").toString());
			}
		}
		
		// 根据state值判断返回页面
		if(state == 0 || state == -1){
			return errorPage();
		}
		String str = String.valueOf(state);
			return str;
	}
	/**
	 * jsy 删除快捷回复
	 * 
	 * @return
	 */
	@RequestMapping(value = "/deleteQuickReply", method = RequestMethod.POST)
	@ResponseBody
	public String deleteQuickReply(@RequestParam Map<String, String> data, Model model) {

		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		
		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/deleteQuickReply", data, UTF8);
		if(!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))){
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			if(!CommonUtil.isEmpty(result)){
				state = Integer.parseInt(result.get("state").toString());
			}
		}
		
		// 根据state值判断返回页面
		if(state == 0 || state == -1){
			return errorPage();
		}
		String str = String.valueOf(state);
			return str;
	}
	/**
	 * jsy 查看快捷回复详情
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/quickReplyDetails")
	public String quickReplyDetails(@RequestParam Map<String, String> data, Model model, HttpSession session) {
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		data.put("userId",userInfo.get("uuid").toString());
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		int state = -1;
		Map<String, Object> map = null;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getQuickReplyOne", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			if(!CommonUtil.isEmpty(result)){
				state = Integer.parseInt(result.get("state").toString());
				map = (Map<String, Object>) result.get("data");
			}
		}

		// 根据state值判断返回页面
		if (state == 0) {
			return errorPage();
		} else if (state == 1) {
			if (map != null) {
				timeToDate(map);
			}
		}
		model.addAttribute("quickReply", map);
		return ".quickReply.quickReplyDetails";
	}
	
}
