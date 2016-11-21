package com.swmaestro.badgemacenter.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.swmaestro.badgemacenter.service.AdviceService;

@Controller
public class AdviceController {
	@Resource(name = "AdviceService")
	private AdviceService service;

	@RequestMapping(value = "/adviceManage.do", method = RequestMethod.GET)
	public String adviceView(Locale locale, Model model) {
		return "adviceManage";
	}

	// 상담 내용 가져오기
	@RequestMapping(value = "/adviceList.do")
	public ModelAndView adviceList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectAdviceList(commandMap);
		mv.addObject("advice_list", list);
		return mv;
	}

	// 해당 상담에 대한 댓글 가져오기
	@RequestMapping(value = "/adviceContentList.do")
	public ModelAndView adviceContentList(HttpServletRequest request) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		int advice_id = Integer.parseInt(request.getParameter("advice_id"));
		map.put("advice_id", advice_id);
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectAdviceContentList(map);
		mv.addObject("advicecontent_list", list);
		return mv;
	}

	// 해당 상담 비밀번호 check
	@RequestMapping(value = "/checkAdvicePassword.do")
	public ModelAndView checkAdvicePassword(HttpServletRequest request) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		int advice_id = Integer.parseInt(request.getParameter("advice_id"));
		map.put("advice_id", advice_id);
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectAdvicePassword(map);
		mv.addObject("password_check", list);
		return mv;
	}

	@RequestMapping("/insertAdviceContent.do")
	public ModelAndView insertAdviceContent(HttpServletRequest request, Map<String, Object> commandMap)
			throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		String advice_id = request.getParameter("advice_id");
		String send_id = request.getParameter("send_id");
		String content = request.getParameter("content");
		String content_date = todayDate();
		System.out.println("id : " + advice_id + " send_id : " + send_id + " content : " + content);
		map.put("advice_id", advice_id);
		map.put("send_id", send_id);
		map.put("content", content);
		map.put("content_date", content_date);
		service.insertAdviceContent(map);
		ModelAndView mv = new ModelAndView("jsonView");
		mv.addObject("insert_state", 1);
		return mv;
	}

	/************************* Student Controller **********************/
	@RequestMapping(value = "studentAdvice.do", method = RequestMethod.GET)
	public String studentAdvice(Locale locale, Model model) throws Exception {

		return "/student/advice";
	}
	@RequestMapping("/insertAdvice.do")
	public ModelAndView insertAdvice(HttpServletRequest request, Map<String, Object> commandMap)
			throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		String badge_id = request.getParameter("badge_id");
		String advice_date = today();
		String title = request.getParameter("title");
		String advice_password = request.getParameter("advice_password");
		System.out.println("id : " + badge_id + " title : " + title + " pwd : " + advice_password);
		map.put("badge_id", badge_id);
		map.put("advice_date", advice_date);
		map.put("title", title);
		map.put("advice_password", advice_password);
		service.insertAdvice(map);
		ModelAndView mv = new ModelAndView("jsonView");
		mv.addObject("insert_state", 1);
		return mv;
	}
	/******************************************************************/
	public String todayDate() {
		Date date = new Date();
		String today_date = "";
		int month = date.getMonth() + 1;
		int day = date.getDate();
		int hours = date.getHours();
		int minutes = date.getMinutes();
		today_date += month / 10 > 0 ? "" + month + "월 " : "0" + month + "월 ";
		today_date += day / 10 > 0 ? "" + day + "일 " : "0" + day + "일 ";
		today_date += hours / 10 > 0 ? "" + hours + "시 " : "0" + hours + "시 ";
		today_date += minutes / 10 > 0 ? "" + minutes + "분" : "0" + minutes + "분";
		return today_date;
	}
	public String today() {
		Date date = new Date();
		String today_date = "";
		int month = date.getMonth() + 1;
		int day = date.getDate();
		int hours = date.getHours();
		int minutes = date.getMinutes();
		int year = 1900 + date.getYear();
		today_date = "" + year + "년 ";
		today_date += month / 10 > 0 ? "" + month + "월 " : "0" + month + "월 ";
		today_date += day / 10 > 0 ? "" + day + "일 " : "0" + day + "일 ";
		today_date += hours / 10 > 0 ? "" + hours + "시 " : "0" + hours + "시 ";
		today_date += minutes / 10 > 0 ? "" + minutes + "분" : "0" + minutes + "분";
		return today_date;
	}
}
