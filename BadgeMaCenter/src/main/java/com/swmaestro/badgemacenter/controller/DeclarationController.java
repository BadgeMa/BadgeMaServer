package com.swmaestro.badgemacenter.controller;

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

	// button A 건수 가져오기
	@RequestMapping(value = "/reportNumber.do")
	public ModelAndView reportNumber(Map<String, Object> commandMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("declaration_date", todayDate());
		map.put("declaration_type", 1);
		ModelAndView mv = new ModelAndView("jsonView");
		List<Map<String, Object>> list = service.selectReportNumber(map);
		mv.addObject("report_result", list);
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

	public String todayDate() {
		Date date = new Date();
		String today_date = "";
		int year = 1900 + date.getYear();
		int month = date.getMonth() + 1;
		int day = date.getDate();
		today_date = "" + year + "년";
		today_date += month / 10 > 0 ? "" + month + "월" : "0" + month + "월";
		today_date += day / 10 > 0 ? "" + day + "일" : "0" + day + "일";
		return today_date;
	}
}
