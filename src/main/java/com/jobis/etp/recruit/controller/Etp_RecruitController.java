package com.jobis.etp.recruit.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.etp.recruit.service.Etp_RecuritService;

@Controller
@RequestMapping("/mypage/etp/*")
public class Etp_RecruitController {
	
	@Inject
	private Etp_RecuritService service;
	
	@RequestMapping(value="/Etp_RecruitForm", method=RequestMethod.GET)
	public void etp_recruit_insert_GET(Etp_RecruitVO vo)throws Exception{
		
	}
	
	@RequestMapping(value="/Etp_RecruitForm", method=RequestMethod.POST)
	public String etp_recruit_insert_POST(Etp_RecruitVO vo, Model model)throws Exception{
		System.out.println(vo);
		
		service.etp_recruit_create(vo);
		
		model.addAttribute("result","success");
		return "redirect:/mypage/etp/Etp_RecruitForm";
	}
	/*
	@RequestMapping(value="/Etp_RecruitList", method=RequestMethod.GET)
	public void etp_recruit_list_GET(Model model)throws Exception{
		model.addAttribute("etp_recruit_list", service.etp_recruit_list());
	}*/
}
