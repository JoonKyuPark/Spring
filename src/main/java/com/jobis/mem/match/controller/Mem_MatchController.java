package com.jobis.mem.match.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.match.service.Mem_MatchService;
import com.jobis.mem.match.service.Mem_MatchServiceImpl;

@Controller
public class Mem_MatchController {
	@Inject
	private Mem_MatchService Mem_MatchService;
	
	@RequestMapping("/mem_matching")
	public String mem_matching(Model model , HttpSession session)
	{

		
		Mem_MatchService.mem_matching((Mem_LoginVO)session.getAttribute("member_infor"));
	
		if(Mem_MatchService.mem_matching((Mem_LoginVO)session.getAttribute("member_infor"))!= null){
			model.addAttribute("matchinglist",Mem_MatchService.mem_matching((Mem_LoginVO)session.getAttribute("member_infor")) );
			List<Etp_RecruitVO> f= (List<Etp_RecruitVO>)Mem_MatchService.mem_matching((Mem_LoginVO)session.getAttribute("member_infor"));
			System.out.println(f.get(0).getMax_pay());
		}else{
		
		}
		return "/join/main/mem_matching";
	}

}
