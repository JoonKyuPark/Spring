package com.jobis.etp.exam.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

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
import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.mem.join.domain.Mem_JoinVO;

@Controller
@RequestMapping("/exam/etp/")
public class Etp_ExamController {

	@Inject
	private Etp_ExamService etp_ExamService;

	// 메인 페이지
	@RequestMapping("etp_Exam_Main")
	public void Etp_Exam_Main(HttpSession session, Model model) {
		try {
			Etp_LoginVO loginVO = (Etp_LoginVO) session.getAttribute("etp_infor");
			int etp_no = loginVO.getEtp_no();
			List<Etp_ExamVO> list = etp_ExamService.etp_Exam_ListService(etp_no);
			model.addAttribute("list", list);
		} catch (Exception e) {
			System.out.println("Etp_ExamController.Etp_Exam_Main Error!!!");
			e.printStackTrace();
		}
	}
	
	// 시험 인원 등록
	@RequestMapping("etp_Exam_Member")
	public void Etp_Exam_MemberList(Model model)throws Exception{
		try {
			System.out.println("1");
			List<Mem_JoinVO> list = etp_ExamService.etp_Exam_MemberListService();
			System.out.println("2");
			model.addAttribute("etp_Exam_MemberList", list);
			System.out.println("3");
		} catch (Exception e) {
			System.out.println("Etp_ExamController.Etp_Exam_MemberList Error!!!");
			e.printStackTrace();
		}
	}

	// 시험 일정 등록 페이지
	@RequestMapping(value = "etp_Exam_Create", method = RequestMethod.GET)
	public void Etp_Exam_CreateForm(Etp_ExamVO etp_examVO) throws Exception {
	}

	// 시험 일정 등록 액션
	@RequestMapping(value = "etp_Exam_Create", method = RequestMethod.POST)
	public String Etp_Exam_Create_POST(HttpSession session, Etp_ExamVO etp_ExamVO) throws Exception {
		try {
			Etp_LoginVO loginVO = (Etp_LoginVO) session.getAttribute("etp_infor");
			int etp_no = loginVO.getEtp_no();
			etp_ExamVO.setEtp_no(etp_no);
			etp_ExamService.etp_Exam_CreateService(etp_ExamVO);
		} catch (Exception e) {
			System.out.println("Etp_ExamController.Etp_Exam_Create_POST Error!!!");
			e.printStackTrace();
		}
		return "redirect:/exam/etp/etp_Exam_Main";
	}

	// 시험 일정 목록 페이지
	@RequestMapping(value = "etp_Exam_List", method = RequestMethod.GET)
	public void Etp_Exam_List(@ModelAttribute("cri") SearchCriteria ca, Model model, HttpSession session)
			throws Exception {
		try {
			Etp_LoginVO loginVO = (Etp_LoginVO) session.getAttribute("etp_infor");
			int etp_no = loginVO.getEtp_no();
			ca.setEtp_no(etp_no);
			List<Etp_ExamVO> list = etp_ExamService.etp_Exam_CriteriaService(ca);
			model.addAttribute("etp_Exam_List", list);
			PageMaker pageMaker = new PageMaker();
			pageMaker.setCri(ca);
			pageMaker.setTotalCount(etp_ExamService.etp_Exam_CountpageService(ca));
			model.addAttribute("pageMaker", pageMaker);
		} catch (Exception e) {
			System.out.println("Etp_ExamController.Etp_Exam_List Error!!!");
			e.printStackTrace();
		}
	}

	// 시험 수정 페이지
	@RequestMapping(value = "etp_Exam_Update", method = RequestMethod.GET)
	public void Etp_Exam_UpdateForm(@RequestParam("exam_no") Integer exam_no, Model model) throws Exception {
		try{
		Etp_ExamVO etp_ExamVO = etp_ExamService.etp_Exam_SelectService(exam_no);
		model.addAttribute("etp_ExamVO", etp_ExamVO);
		}catch(Exception e){
			System.out.println("Etp_ExamController.Etp_Exam_UpdateForm Error!!!");
			e.printStackTrace();
		}
	}

	// 시험 수정 액션
	@RequestMapping(value = "etp_Exam_Update", method = RequestMethod.POST)
	public String Etp_Exam_UpdateAction(Etp_ExamVO etp_ExamVO) {
		try {
			etp_ExamService.etp_Exam_UpdateService(etp_ExamVO);
		} catch (Exception e) {
			System.out.println("Etp_ExamController.Etp_Exam_UpdateAction Error!!!");
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
			System.out.println("Etp_ExamController.Etp_Exam_Delete Error!!!");
			e.printStackTrace();
		}
		return "redirect:/exam/etp/etp_Exam_List";
	}

	// 시험 문제 등록 페이지
	@RequestMapping(value = "etp_Question_Create", method = RequestMethod.GET)
	public void Etp_Question_CreateForm(Etp_QuestionVO etp_QuestionVO, HttpSession session, Model model)
			throws Exception {
		try {
			Etp_LoginVO loginVO = (Etp_LoginVO) session.getAttribute("etp_infor");
			int etp_no = loginVO.getEtp_no();
			List<Etp_ExamVO> list = etp_ExamService.etp_Exam_ListService(etp_no);
			model.addAttribute("etp_Exam_List", list);
		} catch (Exception e) {
			System.out.println("Etp_ExamController.Etp_Question_CreateForm Error!!!");
			e.printStackTrace();
		}
	}

	// 시험 문제 등록 액션
	@RequestMapping(value = "etp_Question_Create", method = RequestMethod.POST)
	public String Etp_Question_Create(Etp_QuestionVO etp_QuestionVO) throws Exception {
		try {
			etp_ExamService.etp_Question_CreateService(etp_QuestionVO);
		} catch (Exception e) {
			System.out.println("Etp_ExamController.Etp_Question_Create Error!!!");
			e.printStackTrace();
		}
		return "redirect:/exam/etp/etp_Exam_Main";
	}

	// 시험 문제 목록 페이지
	@RequestMapping(value = "etp_Question_List", method = RequestMethod.GET)
	public void Etp_Question_List(@RequestParam("exam_no") int exam_no, Model model) {
		try {
			List<Etp_QuestionVO> list = etp_ExamService.etp_Question_ListService(exam_no);
			model.addAttribute("etp_Question_List", list);
		} catch (Exception e) {
			System.out.println("Etp_ExamController.Etp_Question_List Error!!!");
			e.printStackTrace();
		}
	}

	
}
