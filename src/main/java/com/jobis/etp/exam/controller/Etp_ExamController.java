package com.jobis.etp.exam.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.etp.exam.domain.PageMaker;
import com.jobis.etp.exam.domain.SearchCriteria;
import com.jobis.etp.exam.service.Etp_ExamService;

@Controller
@RequestMapping("/exam/etp/")
public class Etp_ExamController {

	@Inject
	private Etp_ExamService etp_ExamService;

	// 메인 페이지
	@RequestMapping("etp_Exam_Main")
	public void Etp_Exam_Main(Model model) {
		try {
			List<Etp_ExamVO> list = etp_ExamService.etp_Exam_ListService();
			model.addAttribute("list",list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// 시험 일정 등록 페이지
	@RequestMapping(value = "etp_Exam_Create", method = RequestMethod.GET)
	public void Etp_Exam_CreateForm(Etp_ExamVO etp_examVO) throws Exception {
	}

	// 시험 일정 등록 액션
	@RequestMapping(value = "etp_Exam_Create", method = RequestMethod.POST)
	public String Etp_Exam_Create_POST(Etp_ExamVO etp_ExamVO) throws Exception {
		try {
			etp_ExamService.etp_Exam_CreateService(etp_ExamVO);
		} catch (Exception e) {
			System.out.println("ok");
			e.printStackTrace();
		}
		return "redirect:/exam/etp/etp_Exam_Main";
	}

	// 시험 일정 목록 페이지
	@RequestMapping(value = "etp_Exam_List", method = RequestMethod.GET)
	public void Etp_Exam_List(@ModelAttribute("cri") SearchCriteria ca, Model model) throws Exception {
		List<Etp_ExamVO> list = etp_ExamService.etp_Exam_CriteriaService(ca);
		model.addAttribute("etp_Exam_List", list);
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(ca);
		pageMaker.setTotalCount(etp_ExamService.etp_Exam_CountpageService(ca));
		model.addAttribute("pageMaker", pageMaker);
	}

	// 시험 수정 페이지
	@RequestMapping(value = "etp_Exam_Update", method = RequestMethod.GET)
	public void Etp_Exam_UpdateForm(@RequestParam("exam_no") Integer exam_no, Model model) throws Exception {
		Etp_ExamVO etp_ExamVO = etp_ExamService.etp_Exam_SelectService(exam_no);
		model.addAttribute("etp_ExamVO", etp_ExamVO);
	}

	// 시험 수정 액션
	@RequestMapping(value = "etp_Exam_Update", method = RequestMethod.POST)
	public String Etp_Exam_UpdateAction(Etp_ExamVO etp_ExamVO) {
		try {
			etp_ExamService.etp_Exam_UpdateService(etp_ExamVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/exam/etp/etp_Exam_List";
	}

	// 시험 삭제 액션
	@RequestMapping(value = "etp_Exam_Delete", method = RequestMethod.GET)
	public String Etp_Exam_Delete(@RequestParam("exam_no") List<Integer> exam_no) {
		try {
			for (int i = 0; i < exam_no.size(); i++) {
				etp_ExamService.etp_Exam_DeleteService(exam_no.get(i));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/exam/etp/etp_Exam_List";
	}
	
	//시험 문제 등록 페이지
	@RequestMapping(value="etp_Question_Create", method = RequestMethod.GET)
	public void Etp_Question_CreateForm(Etp_QuestionVO etp_QuestionVO, Model model)throws Exception{
		try {
			List<Etp_ExamVO> list = etp_ExamService.etp_Exam_ListService();
			model.addAttribute("etp_Exam_List", list);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
	
	//시험 문제 등록 액션
	@RequestMapping(value="etp_Question_Create", method = RequestMethod.POST)
	public String Etp_Question_Create(Etp_QuestionVO etp_QuestionVO)throws Exception{
		try {
			etp_ExamService.etp_Question_CreateService(etp_QuestionVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/exam/etp/etp_Exam_Main";
	}
	
	//시험 문제 목록 페이지
	@RequestMapping(value="etp_Question_List", method = RequestMethod.GET)
	public void Etp_Question_List(@RequestParam("exam_no") int exam_no, Model model){
		try {
			List<Etp_QuestionVO> list = etp_ExamService.etp_Question_ListService(exam_no);
			model.addAttribute("etp_Question_List", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
}


















