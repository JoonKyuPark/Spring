package com.jobis.mem.login.controller;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.mem.join.domain.Mem_JoinVO;
import com.jobis.mem.join.service.Mem_JoinService;
import com.jobis.mem.login.domain.Mem_LoginDTO;
import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.login.service.Mem_LoginService;

@Controller
public class Mem_LoginController {

	@Inject
	private Mem_LoginService loginservice;

	@RequestMapping(value = "/mem_login", method = RequestMethod.POST)
	public String Mem_LoginController_login(
<<<<<<< HEAD
			Mem_LoginDTO mem_logindto, Model model) {

		loginservice.Mem_LoginService_selelct(mem_logindto);
		if (loginservice.Mem_LoginService_selelct(mem_logindto) == null) {

			return "redirect: fail";
		} else {
			model.addAttribute("member_infor", loginservice.Mem_LoginService_selelct(mem_logindto));
			if(mem_logindto.getAutologin()==null){
				
			}else{
				model.addAttribute("autologin",mem_logindto.getAutologin());
			}
			return "redirect: mem_loginOK";
=======
			Mem_LoginVO loginvo/*
								 * , @RequestParam("autologin") String autologin
								 */, Model model) {

		loginservice.Mem_LoginService_selelct(loginvo);
		if (loginservice.Mem_LoginService_selelct(loginvo) == null) {

			return "/main/fail";
		} else {
			model.addAttribute("member_infor", loginservice.Mem_LoginService_selelct(loginvo));
			/* model.addAttribute("autologin", autologin); */
			return "mem_login";
>>>>>>> refs/remotes/HanMuYoung/ParkSeRyoung3
		}
	}
<<<<<<< HEAD
	
	@RequestMapping(value = "/fail", method = RequestMethod.GET)
	public String mem_loginget(){
		
		return "join/main/fail";
	}

	@RequestMapping("/mem_loginOK")
	public String mem_loginOK(){
		
		return "mem_login";
	}
	
	
	@RequestMapping("/join/main/fail")
	public String mem_loginfail(){
		 return "join/main/fail";
	}

	@RequestMapping("/mem_logout")
	public String Mem_LoginController_logout(HttpServletRequest request,HttpServletResponse response) {
		request.getSession().invalidate();
		Cookie cookie1 = new Cookie("mem_autoid", null);
		Cookie cookie2 = new Cookie("mem_autopass", null);
		cookie1.setPath("/");
		cookie2.setPath("/");
		cookie2.setMaxAge(0);
		cookie1.setMaxAge(0);
		response.addCookie(cookie1);
		response.addCookie(cookie2); // 기존 멤버 쿠키 삭제
		System.out.println("왜 안지워지냐");
=======

	@RequestMapping(value = "/mem_login", method = RequestMethod.GET)
	public String Mem_LoginController_return(Mem_LoginVO loginvo, Model model) {
		return "mem_login";
	}

	@RequestMapping("/mem_logout")
	public String Mem_LoginController_logout(HttpServletRequest request) {

>>>>>>> refs/remotes/HanMuYoung/ParkSeRyoung3
		request.getSession().invalidate();

		return "login";
	}

}
