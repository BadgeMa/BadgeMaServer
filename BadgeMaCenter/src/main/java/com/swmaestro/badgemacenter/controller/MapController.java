package com.swmaestro.badgemacenter.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MapController {
	@RequestMapping(value = "/map.do", method = RequestMethod.GET)
	public String mapView(Locale locale, Model model) {
		return "map";
	}
}
