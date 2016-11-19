package com.swmaestro.badgemacenter.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.swmaestro.badgemacenter.service.DeclarationService;
import com.swmaestro.badgemacenter.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	@Resource(name = "UserService")
	private UserService service;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/noti.do", method = RequestMethod.GET)
	public String noti(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "noti";
	}
	@RequestMapping(value = "home.do", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {

		return "overview";
	}
	@RequestMapping(value = "userhome.do", method = RequestMethod.GET)
	public String userHome(Locale locale, Model model) throws Exception {

		return "/student/overview";
	}
	@RequestMapping(value = "classUI.do", method = RequestMethod.GET)
	public String classUI(Locale locale, Model model) throws Exception {

		return "classUI";
	}
}
