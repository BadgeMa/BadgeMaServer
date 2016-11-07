package com.swmaestro.badgemacenter.controller;

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

	// user list display
	@RequestMapping(value = "/declarationList.do")
	public ModelAndView userList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("declarationTable");
		List<Map<String, Object>> list = service.selectDeclarationList(commandMap);
		mv.addObject("declaration_list", list);
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
}
