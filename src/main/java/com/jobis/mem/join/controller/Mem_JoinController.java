package com.jobis.mem.join.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.mem.join.domain.Mem_JoinVO;
import com.jobis.mem.join.service.Mem_JoinService;

@Controller
public class Mem_JoinController {
	
	@Inject
	private Mem_JoinService joinservice;
	
	
	@RequestMapping(value = "join/mem", method = RequestMethod.POST)
	public String Mem_JoinController_join(Mem_JoinVO joinvo, Model model) {
	
		System.out.println(joinvo.getMember_email());
		
		joinservice.Mem_JoinService_create(joinvo);

		
		return "/join/main/main";
	}
	

}
