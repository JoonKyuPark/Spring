package com.jobis.etp.recruit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/etp/etp_log/*")
public class Etp_RecruitController {
	
	
	
	@RequestMapping("test")
	public void insert_form(){
		
	}
	
	

	
	

	
	@RequestMapping(value ="/member_detail" ,method=RequestMethod.GET)
	public String detail(Model model , @RequestParam int bno)throws Exception{

		

		
		System.out.println("bno น๘ศฃดย "+bno);
		
		model.addAttribute("bno", bno);
		
		return "/etp/etp_log/member_detail";
		
	}
	

	
	
	

}
