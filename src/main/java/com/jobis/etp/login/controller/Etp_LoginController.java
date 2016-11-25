package com.jobis.etp.login.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.inject.Inject;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.etp.login.service.Etp_LoginService;

@Controller
public class Etp_LoginController {

	@Inject
	private Etp_LoginService loginservice;

	@RequestMapping(value = "/etp_login", method = RequestMethod.POST)
	public String login(
			Etp_LoginVO loginVO/*
								 * ,@RequestParam("autologin") String autologin
								 */ , Model model) {

		/*
		 * loginVO.setEtp_id(logid); loginVO.setEtp_pass(logpwd);
		 */

		try {
			if (loginservice.loginservice(loginVO) == null) {

				return "fail";
			} else {
				model.addAttribute("etp_infor", loginservice.loginservice(loginVO));
				/* model.addAttribute("autologin",autologin); */
				System.out.println("#333333333");
				return "etp_login";
			}

		} catch (Exception e) {

		}

		return "etp_login";

	}

	@RequestMapping("/etp_logout")
	public String etp_logout(HttpServletRequest request) {

		request.getSession().invalidate();

		return "join/main/main";
	};

}
