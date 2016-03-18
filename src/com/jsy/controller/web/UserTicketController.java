package com.jsy.controller.web;

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
public class UserTicketController extends BaseController {

	HttpUtil util = new HttpUtil();

	/**
	 * yc 跳转到工单提交页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toTicketPage")
	public String toTicketPage(Model model, @RequestParam Map<String, String> dataMap) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/selectSystemOne", dataMap,
				UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		model.addAttribute("data", result.get("data"));

		return "/web/submitTicketPage";
	}

	/**
	 * yc 跳转到工单提交页面
	 * 
	 * @return
	 */
	@RequestMapping(value = "/toTicketList")
	public String toTicketList(Model model, @RequestParam Map<String, String> dataMap) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/getTicket", dataMap, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());
		model.addAttribute("data", result);

		return "/web/ticketList";
	}

	/**
	 * yc 工单提交
	 * 
	 * @return
	 */
	@RequestMapping(value = "/addTicket")
	@ResponseBody
	public Map<String, Object> addTicket(Model model, @RequestParam Map<String, String> dataMap) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/addTicket", dataMap, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result;
	}

	/**
	 * 
	 * yc 跳转到工单详情
	 * 
	 * @param model
	 * @return
	 */
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/userTicketDetails")
	public String userTicketDetails(@RequestParam Map<String, String> data, Model model) {
		int state = -1;
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
		model.addAttribute("systemIndex", data.get("systemIndex"));
		model.addAttribute("ticket", result.get("data"));
		model.addAttribute("reply", result.get("list"));
		return "web/ticketDetails";
	}

	/**
	 * 
	 * yc 关闭工单
	 * 
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/closeTicket")
	@ResponseBody
	public Map<String, Object> closeTicket(@RequestParam Map<String, String> data, Model model) {

		Map<String, Object> sendPostMapRequest = util.sendPostMapRequest(servicePath + "/closeTicket", data, UTF8);
		Map<String, Object> result = JsonUtil.readJson2Map(sendPostMapRequest.get("respContent").toString());

		return result;
	}

}