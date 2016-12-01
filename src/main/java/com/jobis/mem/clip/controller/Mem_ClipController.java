package com.jobis.mem.clip.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.mem.clip.domain.Mem_ClipVO;
import com.jobis.mem.clip.service.Mem_ClipService;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;
import com.jobis.mem.recruit.service.Mem_RecruitService;

@Controller
@RequestMapping("/clip")
public class Mem_ClipController {

	@Inject
	private Mem_ClipService service;
	@Inject
	public Mem_RecruitService recruit_Service;
	
/*	@RequestMapping(value="/mem_Clip_Create",  method = RequestMethod.GET)
	public String mem_Clip_Create(@RequestParam("rno") int rno)throws Exception{
		Mem_ClipVO mem_clip=new Mem_ClipVO();
		mem_clip.setRecruit_no(rno);
		mem_clip.setMember_no(1);
		service.mem_Clip_Create(mem_clip);
		
		return "redirect:/recruit/mem_Recruit_List_Form";
		
	}*/
	
	@RequestMapping(value="",  method = RequestMethod.POST)
	public ResponseEntity<String> mem_Clip_Create(@RequestBody Mem_ClipVO vo)throws Exception{
		ResponseEntity<String> entity=null;
		try{
			Mem_ClipVO mem_clip=new Mem_ClipVO();
			mem_clip.setRecruit_no(vo.getRecruit_no());
			mem_clip.setMember_no(1);
			service.mem_Clip_Create(mem_clip);
			entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
		
	}
	
	@RequestMapping(value="/mem_Recruit_Clip_List_Form",  method = RequestMethod.GET)
	public void mem_Clip_List(Model model)throws Exception{
		List<Mem_ClipVO> recruit_clip_List=service.mem_Clip_List(1);
		model.addAttribute("recruit_clip_List",recruit_clip_List);
		
		
		List<Mem_RecruitVO> recruit_List = new ArrayList<Mem_RecruitVO>();
		for (int i = 0; i < recruit_clip_List.size(); i++) {
			Mem_RecruitVO mem_recruit=recruit_Service.mem_Recruit_Read(recruit_clip_List.get(i).getRecruit_no());
			recruit_List.add(mem_recruit);
		}
		model.addAttribute("recruit_List",recruit_List);
		
		List<Etp_JoinVO> etp_List = new ArrayList<Etp_JoinVO>();
		for (int i = 0; i < recruit_List.size(); i++) {
			etp_List.add(recruit_Service.etp_Join_Read(recruit_List.get(i).getEtp_no()));
		}
		model.addAttribute("etp_List",etp_List);
		
		
	}
}
