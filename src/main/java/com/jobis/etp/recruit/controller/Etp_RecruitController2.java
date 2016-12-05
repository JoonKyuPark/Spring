package com.jobis.etp.recruit.controller;

import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import com.jobis.etp.recruit.domain.Etp_mem_infoVO;
import com.jobis.etp.recruit.service.Etp_RecuritService;

@Controller
@RequestMapping("/etp/etp_log")
public class Etp_RecruitController2 {
	
	@Inject
	private Etp_RecuritService service;
	
	

	
	
	@RequestMapping("/quick_menu")
	public void quick_menufrom(){
		
	}
	
	
	
	@RequestMapping("/etplog_list")
	public void quick_menuList(){
		
	}
	
	
	@RequestMapping("/etp_mem_info")
	public void etp_mem_list(Model mode) throws Exception{
		
		List<Etp_mem_infoVO> list =service.selectList();
		mode.addAttribute("list",list);
		
	}
	
	
	
	@RequestMapping("/quickmenu")
	public void quicktest(){
		
	}
	
	



}
