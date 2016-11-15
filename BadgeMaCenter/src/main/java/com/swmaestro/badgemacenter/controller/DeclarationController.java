package com.swmaestro.badgemacenter.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.swmaestro.badgemacenter.service.DeclarationService;

@Controller
public class DeclarationController {
	@Resource(name = "DeclarationService")
	private DeclarationService service;

	// declaration list display
	@RequestMapping(value = "/declarationList.do")
	public ModelAndView declarationList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("declarationTable");
		List<Map<String, Object>> list = service.selectDeclarationList(commandMap);
		mv.addObject("declaration_list", list);
		return mv;
	}
	@RequestMapping(value = "/declarationLine.do")
	public ModelAndView declarationLine(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectDeclarationList(commandMap);
		mv.addObject("line_list", list);
		return mv;
	}
	@RequestMapping(value = "/preDeclarationList.do")
	public ModelAndView preDeclarationList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectPreDeclarationList(commandMap);
		mv.addObject("pre_list", list);
		return mv;
	}
	@RequestMapping(value = "/doingDeclarationList.do")
	public ModelAndView doingDeclarationList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectDoingDeclarationList(commandMap);
		mv.addObject("doing_list", list);
		return mv;
	}
	@RequestMapping(value = "/declarationManage.do")
	public ModelAndView declarationManage(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("declarationManage");
		List<Map<String, Object>> list = service.selectDeclarationList(commandMap);
		mv.addObject("declaration_list", list);
		return mv;
	}
	// notification 신고 가져오기
	@RequestMapping(value = "/unnotificationList.do")
	public ModelAndView selectUnNotificationList(Map<String, Object> commandMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		// System.out.println("hello");
		map.put("declaration_date", todayDate());
		map.put("declaration_type", 1);
		map.put("notification_state", 0);
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectUnNotificationList(map);
		mv.addObject("notification_result", list);
		if (list.size() != 0) {
			service.updateDeclaration(list.get(list.size() - 1));
		}
		return mv;
	}

	// button A 신고 건수 가져오기
	@RequestMapping(value = "/AbtnNumber.do")
	public ModelAndView AbtnNumber(Map<String, Object> commandMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("declaration_date", today());
		map.put("declaration_type", 1);
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectBtnNumber(map);
		mv.addObject("report_result", list);
		return mv;
	}

	// button A 처리 건수 가져오기
	@RequestMapping(value = "/AbtnSolveNumber.do")
	public ModelAndView AbtnSolveNumber(Map<String, Object> commandMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("declaration_date", today());
		map.put("declaration_type", 1);
		map.put("solve_state", 2);
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectBtnSolveNumber(map);
		mv.addObject("solve_result", list);
		return mv;
	}

	// button B 건수 가져오기
	@RequestMapping(value = "/BbtnNumber.do")
	public ModelAndView BbtnNumber(Map<String, Object> commandMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("declaration_date", todayDate());
		map.put("declaration_type", 2);
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectBtnNumber(map);
		mv.addObject("report_result", list);
		return mv;
	}
	// button B 처리 건수 가져오기
		@RequestMapping(value = "/BbtnSolveNumber.do")
		public ModelAndView BbtnSolveNumber(Map<String, Object> commandMap) throws Exception {
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("declaration_date", todayDate());
			map.put("declaration_type", 2);
			map.put("solve_state", 1);
			ModelAndView mv = new ModelAndView("jsonView");
			List<Map<String, Object>> list = service.selectBtnSolveNumber(map);
			mv.addObject("solve_result", list);
			return mv;
		}
	// delete user
	@RequestMapping("/declarationDelete.do")
	public void deleteDeclaration(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		int declaration_id = Integer.parseInt(request.getParameter("declaration_id"));
		System.out.println("declaration_id : " + declaration_id);
		map.put("declaration_id", declaration_id);
		service.deleteDeclaration(map);
	}
	@RequestMapping("/updateSolve.do")
	public void updateSolve(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		int declaration_id = Integer.parseInt(request.getParameter("declaration_id"));
		int solve_state = Integer.parseInt(request.getParameter("solve_state"));
		System.out.println("declaration_id : " + declaration_id);
		map.put("declaration_id", declaration_id);
		map.put("solve_state", solve_state);
		service.updateSolve(map);
	}
	// 신고 접수
	@RequestMapping("/insertDeclaration.do")
	public void insertDeclaration(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		String badge_id = request.getParameter("badge_id");
		String class_location = request.getParameter("class_location");
		int solve_state = Integer.parseInt(request.getParameter("solve_state"));
		int declaration_type = Integer.parseInt(request.getParameter("declaration_type"));
		String today = todayDate();
		System.out.println(today);
		map.put("badge_id", badge_id);
		map.put("class_location", class_location);
		map.put("declaration_type", declaration_type);
		map.put("declaration_date", today);
		map.put("notification_state", 0);
		map.put("solve_state", solve_state);
		service.insertDeclaration(map);

	}

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
		today_date += minutes/10>0 ? "" +minutes+ "분 " : "0" + minutes+"분 ";
		today_date += seconds/10>0 ? "" +seconds+ "초 " : "0" + seconds+"초 ";
		return today_date;
	}
	public String today() {
		Date date = new Date();
		String today_date = "";
		int year = 1900 + date.getYear();
		int month = date.getMonth() + 1;
		int day = date.getDate();
		
		today_date = "" + year + "년 ";
		today_date += month / 10 > 0 ? "" + month + "월 " : "0" + month + "월 ";
		today_date += day / 10 > 0 ? "" + day + "일 " : "0" + day + "일 ";
		return today_date;
	}
}
