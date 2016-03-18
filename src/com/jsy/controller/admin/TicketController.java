package com.jsy.controller.admin;

import java.util.HashMap;
import java.util.List;
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
public class TicketController extends BaseController {

	HttpUtil util = new HttpUtil();

	/**
	 * yc 跳转到工单流转list
	 * 
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/toTicketMoveList")
	public String toTicketMoveList(Model model, @RequestParam Map<String, String> dataMap, HttpSession session) {
		model.addAttribute("titleNo", 2);
		if (CommonUtil.isEmpty(dataMap.get("pageIndex"))) {
			dataMap.put("pageIndex", "1");
		}
		if (CommonUtil.isEmpty(dataMap.get("pageSize"))) {
			dataMap.put("pageSize", "15");
		}
		Map<String, Object> user = (Map<String, Object>) session.getAttribute("userinfo");
		dataMap.put("systemIndex", user.get("systemIndex").toString());

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getTicketMove", dataMap, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		string2Data(result);
		model.addAttribute("data", result);
		model.addAttribute("pageIndex", dataMap.get("pageIndex"));
		return ".ticket.ticketMoveList";
	}

	/**
	 * 
	 * jsy 跳转到工单list
	 * 
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/ticketList")
	public String ticketList(@RequestParam Map<String, String> data, Model model, HttpSession session) {
		model.addAttribute("titleNo", 1);
		if (CommonUtil.isEmpty(data.get("pageIndex"))) {
			data.put("pageIndex", "1");
		}
		if (CommonUtil.isEmpty(data.get("pageSize"))) {
			data.put("pageSize", "15");
		}
		data.remove("base");
		data.remove("fullPath");
		int state = -1;
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		data.put("ownerId", userInfo.get("uuid").toString());
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
		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectTicketList", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			state = Integer.parseInt(result.get("state").toString());
		}

		// 根据state值判断返回页面和
		if (state == 0 || state == -1) {
			return errorPage();
		} else if (state == 1) {
			string2Data(result);
		}
		if (!CommonUtil.isEmpty(data.get("content"))) {
			model.addAttribute("content", data.get("content"));
		}
		if (!CommonUtil.isEmpty(data.get("status"))) {
			model.addAttribute("status", data.get("status"));
		}
		model.addAttribute("ticket", result);
		model.addAttribute("pageIndex", data.get("pageIndex"));
		return ".ticket.ticketList";
	}

	/**
	 * yc 跳转到工单流转One
	 * 
	 * @return
	 */
	@RequestMapping(value = "/getTicketMoveOne")
	public String getTicketMoveOne(Model model, @RequestParam String uuid, HttpSession session) {
		model.addAttribute("titleNo", 2);
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		Map<String, String> paramsMap = new HashMap<String, String>();
		paramsMap.put("uuid", uuid);
		paramsMap.put("systemIndex", userInfo.get("systemIndex").toString());
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getTicketMoveOne", paramsMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		string2Data(result);
		model.addAttribute("data", result.get("data"));
		
		return ".ticket.ticketMoveDetails";
	}

	/**
	 * yc 审核流转
	 * 
	 * @return
	 */
	@RequestMapping(value = "passTicketMove")
	@ResponseBody
	public Map<String, Object> passTicketMove(Model model, @RequestParam Map<String, String> dataMap,
			HttpSession session) {
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		dataMap.put("status", "1");
		dataMap.put("systemIndex", userInfo.get("systemIndex").toString());
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/checkTicketMove", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result;
	}

	/**
	 * yc 流转驳回
	 * 
	 * @return
	 */
	@SuppressWarnings("unused")
	@RequestMapping(value = "rejectTicketMove")
	public String rejectTicketMove(Model model, @RequestParam Map<String, String> dataMap, HttpSession session) {
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		dataMap.put("status", "2");
		dataMap.put("systemIndex", userInfo.get("systemIndex").toString());
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/rejectTicketMove", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return "redirect:getTicketMoveOne?uuid=" + dataMap.get("uuid");
	}

	/**
	 * yc 流转分配
	 * 
	 * @return
	 */
	@SuppressWarnings("unused")
	@RequestMapping(value = "distributionTicketMove")
	public String distributionTicketMove(Model model, @RequestParam Map<String, String> dataMap, HttpSession session) {
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		dataMap.put("status", "3");
		dataMap.put("systemIndex", userInfo.get("systemIndex").toString());
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/distributionTicketMove",
				dataMap, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return "redirect:getTicketMoveOne?uuid=" + dataMap.get("uuid");
	}

	/**
	 * yc 工单分配
	 * 
	 * @return
	 */
	@SuppressWarnings("unused")
	@RequestMapping(value = "ticketDistribution")
	public String ticketDistribution(Model model, @RequestParam Map<String, String> dataMap, HttpSession session) {
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		dataMap.put("systemIndex", userInfo.get("systemIndex").toString());
		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/ticketDistribution", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return "redirect:ticketList";
	}

	/**
	 * 
	 * jsy 跳转到工单详情
	 * 
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/ticketDetails")
	public String ticketDetails(@RequestParam String uuid, Model model, HttpSession session) {
		model.addAttribute("titleNo", 1);
		
		Map<String, String> data = new HashMap<String, String>();
		data.put("uuid", uuid);
		int state = -1;
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		data.put("systemIndex", userInfo.get("systemIndex").toString());
		data.put("userId", userInfo.get("uuid").toString());
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		List<Map<String, Object>> listmap = null;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/ticketDetails", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			state = Integer.parseInt(result.get("state").toString());
		}

		// 根据state值判断返回页面和
		if (state == 0 || state == -1) {
			return errorPage();
		} else if (state == 1) {
			string2Data(result);
		}
		model.addAttribute("ticket", result.get("data"));
		model.addAttribute("reply", result.get("list"));
		model.addAttribute("quickReply", result.get("quickReplyList"));
		return ".ticket.ticketDetails";
	}

	/**
	 * 
	 * jsy 申请流转
	 * 
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/applyTicketMove")
	public String applyTicketMove(@RequestParam Map<String, String> data, Model model, HttpSession session) {
		int state = -1;
		data.put("status", "0");
		Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
		data.put("systemIndex", userInfo.get("systemIndex").toString());
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		List<Map<String, Object>> listmap = null;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/addTicketMove", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			state = Integer.parseInt(result.get("state").toString());
		}

		// 根据state值判断返回页面和
		if (state == 0 || state == -1) {
			return errorPage();
		} else if (state == 1) {
			string2Data(result);
		}
		return "redirect:ticketDetails?uuid=" + data.get("ticketId").toString();
	}

	/**
	 * 
	 * jsy 回复
	 * 
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/addTicketReply")
	@ResponseBody
	public String addTicketReply(@RequestParam Map<String, String> data, Model model, HttpSession session) {
		int state = -1;
		if (!CommonUtil.isEmpty(data.get("replyContent"))) {
			model.addAttribute("replyContent", data.get("replyContent"));
		}
		if (data.get("systemIndex") == null) {
			Map<String, Object> userInfo = (Map<String, Object>) session.getAttribute("userinfo");
			data.put("systemIndex", userInfo.get("systemIndex").toString());
		}
		Map<String, Object> sendPostMapRequest = null;
		Map<String, Object> result = null;
		List<Map<String, Object>> listmap = null;

		sendPostMapRequest = util.sendPostMapRequest(servicePath + "/addTicketReply", data, UTF8);
		if (!CommonUtil.isEmpty(sendPostMapRequest.get("respContent"))) {
			result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
			state = Integer.parseInt(result.get("state").toString());
		}

		// 根据state值判断返回页面和
		if (state == 0 || state == -1) {
			return errorPage();
		}

		return state + "";
	}
}
