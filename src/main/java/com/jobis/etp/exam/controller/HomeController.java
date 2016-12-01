package com.jobis.etp.exam.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home12() {
	
		
		return "join/main/main";
	}
	
	
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		
		return "login";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {

		
		return "join";
	}
	
	@RequestMapping(value = "/id_check", method = RequestMethod.POST)
	public String idcheck(Locale locale, Model model) {

	System.out.println("22222222222");
		
		return "";
	}
	
	
	
	
	
	
}