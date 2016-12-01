package com.jobis.etp.exam.persistance;


import java.text.DateFormat;
import java.util.Date;
<<<<<<< HEAD
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobis.etp.login.persistance.Etp_LoginDAOImpl;
import com.jobis.etp.recruit.persistance.Etp_RecuritDAO;
import com.jobis.etp.recruit.persistance.Etp_RecuritDAOImpl;



@Controller
public class HomeController {
	


@Inject
private Etp_RecuritDAO dao;
	
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

=======
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
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
	
	
	
	
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
	
	
}
