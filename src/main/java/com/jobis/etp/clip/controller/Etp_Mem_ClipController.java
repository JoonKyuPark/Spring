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

import com.jobis.etp.clip.domain.AlarmDTO;
import com.jobis.etp.clip.domain.Etp_Mem_ClipDTO;
import com.jobis.etp.clip.domain.Etp_Mem_ClipVO;
import com.jobis.etp.clip.domain.Mem_Resume_ClipDTO;
import com.jobis.etp.clip.service.Etp_Mem_ClipService;
import com.jobis.etp.recruit.domain.Etp_RecruitDTO;
import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.mem.resume.domain.Mem_Resume_abilityDTO;

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
		/*
		Etp_RecruitDTO recruit_dto = new Etp_RecruitDTO();
		Mem_Resume_ClipDTO resume_dto = new Mem_Resume_ClipDTO();
		Mem_Resume_abilityDTO ability_dto = new Mem_Resume_abilityDTO();
		
		for(int count=0; count<=100; ){
			//희망연봉
			if(recruit_dto.getMin_pay() <= resume_dto.getHope_income() && resume_dto.getHope_income() <= recruit_dto.getMax_pay()){
				count = count+25;
				System.out.println(count+"%");
			}
			//경력년수
			if(recruit_dto.getCareer_period() <= Integer.parseInt(resume_dto.getWork_month())){
				count = count+25;
				System.out.println(count+"%");
			}
			//최종학력
			//Integer.parseInt(recruit_dto.getAc_ability_no());  //String-내꺼
			//ability_dto.getEd_division()  //int-형묵오빠꺼
			
			//int int_ac_ability_no = Integer.parseInt(recruit_dto.getAc_ability_no());
			//Integer.parseInt(recruit_dto.getAc_ability_no());
				
			int nothing = 0; // 학력무관
			int high = 1; //고졸
			int junior = 2;  //전문대졸
			int university = 4;  //4년제졸
			int graduate = 6;  //대학원졸
			if (ability_dto.getEd_division() >= nothing) {
				if(recruit_dto.getAc_ability_no().equalsIgnoreCase("학력무관")){
					count = count+25;
					System.out.println(count+"%");
				}
			}else if(ability_dto.getEd_division() >= high){
				if(recruit_dto.getAc_ability_no().equalsIgnoreCase("고등학교졸업")){
					count = count+25;
					System.out.println(count+"%");
				}
			}else if(ability_dto.getEd_division() >= junior){
				if(recruit_dto.getAc_ability_no().equalsIgnoreCase("전문대학교재학/졸업(2,3년제)")){
					count = count+25;
					System.out.println(count+"%");
				}
			}else if(ability_dto.getEd_division() >= university){
				if(recruit_dto.getAc_ability_no().equalsIgnoreCase("대학교재학/졸업(4년제)")){
					count = count+25;
					System.out.println(count+"%");
				}
			}else if(ability_dto.getEd_division() >= graduate){
				if(recruit_dto.getAc_ability_no().equalsIgnoreCase("대학원재학/졸업")){
					count = count+25;
					System.out.println(count+"%");
				}
			}
			
			//채용분야
			if(resume_dto.getVolun_field().equals(recruit_dto.getRecruit_field())){
				count = count+25;
				System.out.println(count+"%");
			}
		}*/
		
	} 
	
	@RequestMapping(value="/Mem_Resume_ReadForm", method=RequestMethod.GET)
	public void mem_resume_read(@RequestParam Integer resume_no, Model model)throws Exception{
		model.addAttribute("Mem_Resume_ClipDTO", service.mem_clip_read(resume_no));
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
	
	@RequestMapping(value="/Etp_Mem_Clip_ListForm", method=RequestMethod.POST)
	public void mem_clip_listPOST(AlarmDTO dto) throws Exception{
		service.alarm_insert(dto);
		//return "redirect:/mypage/etp/Etp_Mem_Clip_InsertForm";
	}
	
	
	/*@ResponseBody
	 @RequestMapping(value="/Etp_Mem_Clip_InsertForm", method=RequestMethod.POST,produces="text/plain;charset=UTF-8")
	public String alarm(@RequestParam String etp_no) throws Exception{
		
		return null;
	}*/
	
}
