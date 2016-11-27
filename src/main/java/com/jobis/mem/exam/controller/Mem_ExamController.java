package com.jobis.mem.exam.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_CountVO;
import com.jobis.mem.exam.domain.Mem_QuestionVO;
import com.jobis.mem.exam.service.Mem_ExamService;
import com.jobis.mem.login.domain.Mem_LoginVO;

@Controller
@RequestMapping("/exam/mem/")
public class Mem_ExamController {

	@Inject
	private Mem_ExamService mem_ExamService;
	
	@RequestMapping("mem_Exam_Main")
	public void Mem_Exam_Main(HttpSession session, Model model){
		try {
			Mem_LoginVO loginVO = (Mem_LoginVO)session.getAttribute("member_infor");
			int member_no = loginVO.getMember_no();
			List<Etp_ExamVO> list = mem_ExamService.all_Exam_ListService(member_no);
			model.addAttribute("list", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "mem_Exam_List")
	public void mem_Exam_List(Model model, HttpSession session) throws Exception {
		try {
			Mem_LoginVO loginVO = (Mem_LoginVO) session.getAttribute("member_infor");
			int mem_no = loginVO.getMember_no();
			model.addAttribute("mem_Exam_List", mem_ExamService.mem_Exam_ListService(mem_no));
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@RequestMapping(value = "mem_Question_List", method = RequestMethod.POST)
	public String mem_Question_List(@RequestParam("exam_no") int exam_no,
			@RequestParam("exam_question_no") int exam_question_no, Etp_QuestionVO etp_QuestionVO, Model model)
			throws Exception {
		Mem_QuestionVO questionVO = new Mem_QuestionVO();
		questionVO.setExam_no(exam_no);
		questionVO.setExam_question_no(exam_question_no);
		try {
			int maxQuestion = mem_ExamService.mem_Question_MaxService(questionVO);
			model.addAttribute("max", maxQuestion);
			Etp_QuestionVO question = mem_ExamService.mem_Question_LIstService(questionVO);
			model.addAttribute("question", question);
			return "/exam/mem/mem_Question_List";
		} catch (Exception e) {
			e.printStackTrace();
			return "redirect:/exam/mem/mem_Exam_List";
		}
	}

	@RequestMapping(value = "mem_Answer_Create", method = RequestMethod.POST)
	public String mem_Answer_Create(Mem_AnswerVO mem_AnswerVO) throws Exception {
		try {
			mem_ExamService.mem_Answer_CreateService(mem_AnswerVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "mem_Question_List";
	}
	
	@RequestMapping(value = "mem_Update_Count", method = RequestMethod.POST)
	public void Mem_Update_Count(Mem_CountVO mem_CountVO, HttpSession session)throws Exception{
		try {
			Mem_LoginVO loginVO = (Mem_LoginVO)session.getAttribute("member_infor");
			System.out.println("Controller");
			int member_no = loginVO.getMember_no();
			mem_CountVO.setMember_no(member_no);
			System.out.println(member_no);
			mem_ExamService.mem_Count_UpdateService(mem_CountVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
