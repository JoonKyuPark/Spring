package com.jobis.mem.match.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobis.mem.match.service.Mem_MatchService;
import com.jobis.mem.match.service.Mem_MatchServiceImpl;

@Controller
public class Mem_MatchController {
	@Inject
	private Mem_MatchService Mem_MatchService;
	
	@RequestMapping("/mem_matching")
	public String mem_matching(Model model )
	{
		
		Mem_MatchService.mem_matching();
	
		if(Mem_MatchService.mem_matching()!= null){
			model.addAttribute("matchinglist",Mem_MatchService.mem_matching() );
		}else{
		
		}
		return "/join/main/mem_matching";
	}

}
