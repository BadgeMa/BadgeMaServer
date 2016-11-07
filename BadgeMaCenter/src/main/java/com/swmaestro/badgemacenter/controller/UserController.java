package com.swmaestro.badgemacenter.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.swmaestro.badgemacenter.service.UserService;

@Controller
public class UserController {
	@Resource(name = "UserService")
	private UserService service;

	// user list display
	@RequestMapping(value = "/userList.do")
	public ModelAndView userList(Map<String, Object> commandMap) throws Exception {
		ModelAndView mv = new ModelAndView("userTable");
		List<Map<String, Object>> list = service.selectUserList(commandMap);
		mv.addObject("user_list", list);
		return mv;
	}

	// delete user
	@RequestMapping("/userDelete.do")
	public void memberDelete(HttpServletRequest request, Map<String, Object> commandMap) throws Exception {
		Map<String, Object> map = new HashMap<String, Object>();
		String badge_id = request.getParameter("badge_id");
		System.out.println("badge_id : " + badge_id);
		map.put("badge_id", badge_id);
		service.deleteUser(map);

	}
}
