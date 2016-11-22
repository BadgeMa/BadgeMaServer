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

import com.swmaestro.badgemacenter.service.FeedService;

@Controller
public class FeedController {
	@Resource(name = "FeedService")
	private FeedService service;
	@RequestMapping(value = "/feed.do", method = RequestMethod.GET)
	public String feedView(Locale locale, Model model) {
		return "feed";
	}
	@RequestMapping(value = "/feedList.do")
	public ModelAndView feedList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectFeedList(commandMap);
		mv.addObject("feed_list", list);
		return mv;
	}
	@RequestMapping(value = "/feedConfirmList.do")
	public ModelAndView feedConfirmList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("feedConfirm");
		List<Map<String, Object>> list = service.selectFeedConfirmList(commandMap);
		mv.addObject("confirm_list", list);
		return mv;
	}
	@RequestMapping(value = "/feedCommentList.do")
	public ModelAndView feedCommentList(HttpServletRequest request) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		int feed_id = Integer.parseInt(request.getParameter("feed_id"));
		map.put("feed_id", feed_id);
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectFeedCommentList(map);
		mv.addObject("feedcomment_list", list);
		return mv;
	}
	@RequestMapping("/insertFeedComment.do")
	public ModelAndView insertFeedComment(HttpServletRequest request, Map<String, Object> commandMap)
			throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		int feed_id = Integer.parseInt(request.getParameter("feed_id"));
		String comment = request.getParameter("comment");
		String comment_date = today();
		map.put("feed_id", feed_id);
		map.put("comment", comment);
		map.put("comment_date", comment_date);
		System.out.println("comment : " + comment + " id : " + feed_id);
		service.insertFeedComment(map);
		ModelAndView mv = new ModelAndView("jsonView");
		mv.addObject("insert_state", 1);
		return mv;
	}
	@RequestMapping("/updateFeedState.do")
	public ModelAndView updateSolve(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		int feed_id = Integer.parseInt(request.getParameter("feed_id"));
		map.put("feed_id", feed_id);
		service.updateFeedState(map);
		ModelAndView mv = new ModelAndView("jsonView");
		mv.addObject("update_state", 1);
		return mv;
	}
	/*********************** Student ********************************/
	@RequestMapping(value = "/studentFeed.do", method = RequestMethod.GET)
	public String studentFeedView(Locale locale, Model model) {
		return "student/studentFeed";
	}
	@RequestMapping(value = "/studentFeedForm.do", method = RequestMethod.GET)
	public String feedForm(Locale locale, Model model) {
		return "student/feedForm";
	}
	@RequestMapping("/insertFeed.do")
	public ModelAndView insertFeed(HttpServletRequest request, Map<String, Object> commandMap)
			throws Exception {
		request.setCharacterEncoding("utf-8");
		Map<String, Object> map = new HashMap<String, Object>();
		String title = request.getParameter("feedform_context");
		String feed_date = todayDate();
		System.out.println("title : " + title);
		map.put("title", title);
		map.put("feed_date", feed_date);
		service.insertFeed(map);
		ModelAndView mv = new ModelAndView("student/feedForm");
		return mv;
	}
	/**************************************************************/
	public String todayDate() {
		Date date = new Date();
		String today_date = "";
		int year = 1900 + date.getYear();
		int month = date.getMonth() + 1;
		int day = date.getDate();
		int hours = date.getHours();
		int minutes = date.getMinutes();
		int seconds = date.getSeconds();
		today_date = "" + year + "년 ";
		today_date += month / 10 > 0 ? "" + month + "월 " : "0" + month + "월 ";
		today_date += day / 10 > 0 ? "" + day + "일 " : "0" + day + "일 ";
		today_date += hours/10>0 ? "" +hours+ "시 " : "0" + hours+"시 ";
		today_date += minutes/10>0 ? "" +minutes+ "분" : "0" + minutes+"분";
		return today_date;
	}
	public String today() {
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
}
