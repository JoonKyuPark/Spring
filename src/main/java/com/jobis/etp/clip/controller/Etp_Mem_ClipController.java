package com.jobis.etp.clip.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobis.etp.clip.domain.Etp_Mem_ClipDTO;
import com.jobis.etp.clip.domain.Etp_Mem_ClipVO;
import com.jobis.etp.clip.domain.Mem_Resume_ClipDTO;
import com.jobis.etp.clip.service.Etp_Mem_ClipService;
import com.jobis.etp.recruit.domain.Etp_RecruitVO;

@Controller
@RequestMapping("/mypage/etp/*")
public class Etp_Mem_ClipController {

	
	@Inject
	private Etp_Mem_ClipService service;
	
	
	@RequestMapping(value="/Etp_Mem_Clip_InsertForm", method=RequestMethod.GET)
	public void mem_clip_insertGET(){
		
	}
	
	@ResponseBody
	@RequestMapping(value="/Etp_Mem_Clip_InsertForm", method=RequestMethod.POST)
	public ResponseEntity<String> mem_clip_insertPOST(Etp_Mem_ClipDTO dto){
		ResponseEntity<String> entity = null; 
		System.out.println(dto);
		try {
			service.insert(dto);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
	}
	
	///////////////////////////////////////
	@RequestMapping(value="/Etp_Mem_Clip_ListForm", method=RequestMethod.GET)
	public void mem_clip_listGET(Model model) throws Exception{
		model.addAttribute("mem_clip_list", service.mem_clip_list());
	} 
	
	@RequestMapping(value="/Mem_Resume_ReadForm", method=RequestMethod.GET)
	public void mem_resume_read(@RequestParam Integer resume_no, Model model)throws Exception{
		model.addAttribute("Mem_Resume_ClipDTO", service.mem_clip_read(resume_no));
		Mem_Resume_ClipDTO dto = null;
	}
	
	@RequestMapping(value="/Etp_Eval_Memo", method=RequestMethod.GET)
	public void Etp_Eval_MemoGET(@RequestParam("mem_clip_no") Integer mem_clip_no, Model model){
		model.addAttribute("mem_clip_no", mem_clip_no);
	}
	
	@RequestMapping(value="/Etp_Eval_Memo", method=RequestMethod.POST)
	public String Etp_Eval_MemoPOST(Etp_Mem_ClipDTO dto) throws Exception{		
		service.mem_eval_memo_update(dto);
		return "redirect:/mypage/etp/Etp_Mem_Clip_ListForm";
	}
	
	/*@RequestMapping(value="/Etp_RecruitList", method=RequestMethod.GET)
	public void etp_mem_clip_list_GET(Model model)throws Exception{
		model.addAttribute("mem_clip_list", service.mem_clip_list());
		System.out.println("ok");
	}*/
	
}
