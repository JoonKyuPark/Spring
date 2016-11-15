package com.jobis.mem.resume.controller;

import java.util.List;

import javax.inject.Inject;

import org.junit.runners.AllTests;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.mem.resume.domain.Mem_ResumeDTO;
import com.jobis.mem.resume.domain.Mem_Resume_abilityDTO;
import com.jobis.mem.resume.domain.Mem_Resume_allVO;
import com.jobis.mem.resume.domain.Mem_Resume_careerListDTO;
import com.jobis.mem.resume.domain.Mem_Resume_defaultResumeDTO;
import com.jobis.mem.resume.domain.Mem_Resume_listVO;
import com.jobis.mem.resume.domain.Mem_Resume_resumeOpenDTO;
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
		List<Mem_Resume_listVO> list = resume_Service.mem_Resume_list();
		model.addAttribute("list",list);
		
		int mem_no = 1;
		
		int default_resume_no = resume_Service.mem_Resume_default_select(mem_no);
		model.addAttribute("default_resume_no", default_resume_no);
		
	}
	
	
	@RequestMapping(value="/create", method=RequestMethod.GET)
	public String mem_Resume_create(){
		return "/resume/create";
	}
	
	@RequestMapping(value="/create", method=RequestMethod.POST)
	public String mem_Resume_create(Mem_ResumeDTO resumeDTO, Mem_Resume_abilityDTO abilityDTO, Mem_Resume_careerListDTO resumeListDTO){
		System.out.println("컨트롤러 create post");
		
		resume_Service.mem_Resume_create(resumeDTO, abilityDTO, resumeListDTO);
		
		return "redirect:/resume/list";
	}
	
	
	
	@RequestMapping(value="/read", method=RequestMethod.GET)
	public String mem_Resume_read(Model model, @RequestParam("seq") Integer seq){
		Mem_Resume_allVO all = resume_Service.mem_Resume_read(seq);
		model.addAttribute("resume", all.getResumeVO());
		model.addAttribute("ability", all.getAc_abilityVO());
		model.addAttribute("career", all.getCareerVO());
		return "/resume/read";
	}
	
	
	@RequestMapping(value="/resume_default_update", method=RequestMethod.GET)
	public String resume_default_update(@RequestParam("default") String default_no){
		int de_no = Integer.parseInt(default_no);
		System.out.println("디폴트 넘버!!!!!!!!!!!!!!!!!!!!!" + de_no);
		
		Mem_Resume_defaultResumeDTO de_resumeDTO =new Mem_Resume_defaultResumeDTO();
		
		// 세션에서 멤버 번호 확인 if 해줘야함 !!!!!!!!!!!!!!!!!!!!!!
		
		
		de_resumeDTO.setMember_no(1);
		de_resumeDTO.setResume_no(de_no);
		resume_Service.mem_Resume_default_update(de_resumeDTO);
		System.out.println("디폴트 이력서 수정 완료");
		return "redirect:/resume/list";
	}
	
	
	@RequestMapping(value="/resume_open", method=RequestMethod.GET)
	public String resume_default_open(@RequestParam("resume_openValue") String openValue, @RequestParam("resume_no") String re_no){
		int resume_no = Integer.parseInt(re_no);
		// 세션에서 멤버 번호 확인 if 해줘야함 !!!!!!!!!!!!!!!!!!!!!!
		
		Mem_Resume_resumeOpenDTO resumeOpenDTO = new Mem_Resume_resumeOpenDTO();
		
		resumeOpenDTO.setResume_no(resume_no);
		resumeOpenDTO.setResume_open(openValue);
		resume_Service.mem_Reusme_resumeOpen_update(resumeOpenDTO);
		return "redirect:/resume/list";
	}
	
	
	
	
}
