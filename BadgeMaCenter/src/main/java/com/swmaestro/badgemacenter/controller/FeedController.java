package com.swmaestro.badgemacenter.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FeedController {
	@RequestMapping(value = "/feed.do", method = RequestMethod.GET)
	public String feedView(Locale locale, Model model) {
		return "feed";
	}
	@RequestMapping(value = "/studentFeed.do", method = RequestMethod.GET)
	public String studentFeedView(Locale locale, Model model) {
		return "student/studentFeed";
	}
}
