package com.jobis.etp.exam.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.service.Etp_ExamService;

@Controller
@RequestMapping("/exam/etp/")
public class Etp_ExamController {
	
	@Inject
	private Etp_ExamService etp_ExamService;
	
	@RequestMapping(value="etp_Exam_Main")
	public void Etp_Exam_Main(){
		
	}
	@RequestMapping(value="etp_Exam_Create", method=RequestMethod.GET)
	public void Etp_Exam_Create_GET(Etp_ExamVO etp_examVO)throws Exception{
		System.out.println("시험 일정 등록 페이지");
	}
	@RequestMapping(value="etp_Exam_Create", method=RequestMethod.POST)
	public String Etp_Exam_Create_POST(Etp_ExamVO etp_ExamVO)throws Exception{
		try{
		etp_ExamService.etp_Exam_CreateService(etp_ExamVO);
		}catch(Exception e){
			System.out.println("ok");
			e.printStackTrace();
		}
		return "redirect:/exam/etp/etp_Exam_Main";
	}
	@RequestMapping(value = "etp_Exam_List", method=RequestMethod.GET)
	public void Etp_Exam_List(int etp_no, Model model)throws Exception{
		List<Etp_ExamVO> list = etp_ExamService.etp_Exam_ListService(etp_no);
		model.addAttribute("etp_Exam_List", list);
	}
	
}
