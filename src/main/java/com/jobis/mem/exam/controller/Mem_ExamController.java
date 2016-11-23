package com.jobis.mem.exam.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_QuestionVO;
import com.jobis.mem.exam.service.Mem_ExamService;

@Controller
@RequestMapping("/exam/mem/")
public class Mem_ExamController {

	@Inject
	private Mem_ExamService mem_ExamService;
	
	@RequestMapping(value = "mem_Exam_List")
	public void  mem_Exam_List(Model model){
		model.addAttribute("mem_Exam_List", mem_ExamService.mem_Exam_ListService());
	}
	
	@RequestMapping(value="mem_Question_List", method=RequestMethod.POST)
	public String mem_Question_List(@RequestParam("exam_no") int exam_no, @RequestParam("exam_question_no") int exam_question_no, Etp_QuestionVO etp_QuestionVO, Model model)throws Exception{
		Mem_QuestionVO questionVO = new Mem_QuestionVO();
		questionVO.setExam_no(exam_no);
		questionVO.setExam_question_no(exam_question_no);
		try{
		int maxQuestion = mem_ExamService.mem_Question_MaxService(questionVO);
		model.addAttribute("max", maxQuestion);
		}catch(Exception e){
			e.printStackTrace();
			return "redirect:/exam/mem/mem_Exam_List";
		}
		try {
			Etp_QuestionVO question = mem_ExamService.mem_Question_LIstService(questionVO);
			model.addAttribute("question", question);
			return "mem_Quesiton_List";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/exam/mem/mem_Exam_List";
		}
	}
	
	@RequestMapping(value="mem_Answer_Create", method=RequestMethod.POST)
	public String mem_Answer_Create(Mem_AnswerVO mem_AnswerVO){
		
		mem_ExamService.mem_Answer_CreateService(mem_AnswerVO);
		return "mem_Question_List";
	}
}
