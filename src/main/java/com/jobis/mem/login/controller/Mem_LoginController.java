package com.jobis.mem.login.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.jobis.mem.join.domain.Mem_JoinVO;
import com.jobis.mem.join.service.Mem_JoinService;
import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.login.service.Mem_LoginService;


@Controller
public class Mem_LoginController {
	
	@Inject
	private Mem_LoginService loginservice;
	
	@RequestMapping(value = "/mem_login", method = RequestMethod.POST)
	public String Mem_LoginController_login(Mem_LoginVO loginvo, Model model) {
	
		
		
		loginservice.Mem_LoginService_selelct(loginvo);
		if(loginservice.Mem_LoginService_selelct(loginvo)==null){
		
	    
		return "/main/fail";
		}else{
			model.addAttribute("member_infor", loginservice.Mem_LoginService_selelct(loginvo));
			return "mem_login";
		}
	}
		
		@RequestMapping(value = "/mem_login", method = RequestMethod.GET)
		public String Mem_LoginController_return(Mem_LoginVO loginvo, Model model) {
				return "mem_login";
			}
		
		@RequestMapping("/mem_logout")
		public String Mem_LoginController_logout(HttpServletRequest request){

			
			request.getSession().invalidate();
			return "/join/main/main";
		}

	
		
		
}
