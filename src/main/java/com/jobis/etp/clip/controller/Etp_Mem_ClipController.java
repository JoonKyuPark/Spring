package com.jobis.etp.clip.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobis.etp.clip.domain.Etp_Mem_ClipVO;
import com.jobis.etp.clip.service.Etp_Mem_ClipService;
import com.jobis.etp.recruit.domain.Etp_RecruitVO;

@Controller
@RequestMapping("/mypage/etp/*")
public class Etp_Mem_ClipController {

	@Inject
	private Etp_Mem_ClipService service;
	
	@RequestMapping(value="/Etp_RecruitList", method=RequestMethod.GET)
	public void etp_mem_clip_list_GET(Model model)throws Exception{
		model.addAttribute("etp_mem_clip_list", service.etp_mem_clip_list());
		System.out.println("ok");
	}
	
}
