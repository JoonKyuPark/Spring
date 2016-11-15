package com.jobis.mem.resume.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.mem.resume.domain.Mem_ResumeVO;
import com.jobis.mem.resume.domain.Mem_Resume_abilityVO;
import com.jobis.mem.resume.domain.Mem_Resume_allDTO;
import com.jobis.mem.resume.domain.Mem_Resume_careerListVO;
import com.jobis.mem.resume.domain.Mem_Resume_careerVO;
import com.jobis.mem.resume.domain.Mem_Resume_listDTO;
import com.jobis.mem.resume.service.Mem_ResumeService;

@Controller
@RequestMapping("/resume")
public class Mem_ResumeController 
{

	@Inject
	Mem_ResumeService resume_Service;
	
	@RequestMapping(value={ "/" , "/list" })
	public void  mem_Resume_list(Model model)
	{
		System.out.println("리스트");
		List<Mem_Resume_listDTO> list = resume_Service.mem_Resume_list();
		model.addAttribute("list",list);
	}
	
	
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public String mem_Resume_create(){
		return "/resume/create";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String mem_Resume_create(Mem_ResumeVO resumeVO, Mem_Resume_abilityVO abilityVO, Mem_Resume_careerListVO resumeListVO){
		System.out.println("컨트롤러 create post");

		System.out.println(resumeListVO.toString());
		
		
		System.out.println("dao career list 진입2  " + resumeListVO.getResumeListVO().get(0).toString());
		
		resume_Service.mem_Resume_create(resumeVO, abilityVO, resumeListVO);
		return "redirect:/resume/list";
	}
	
	/*@RequestMapping(value="/test", method=RequestMethod.GET)
	public String test1(){
		return "/resume/test";
	}
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String test2(Mem_Resume_careerListVO resumeListVO){
		System.out.println("컨트롤러 create post");

		System.out.println(resumeListVO.toString());
		
		
		return "redirect:/resume/list";
	}*/
	
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public String mem_Resume_read(Model model, @RequestParam("seq") Integer seq){
		Mem_Resume_allDTO all = resume_Service.mem_Resume_read(seq);
		model.addAttribute("re", all);
		return "/resume/read";
	}
	
	
	
	
}
