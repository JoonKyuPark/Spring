package com.jobis.etp.pass.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.etp.pass.service.Etp_Pass_Service;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;

@Controller
@RequestMapping("/first_pass/*")
public class Etp_PassController {

	@Inject
	Etp_Pass_Service service;

	@RequestMapping(value = "/etp_First_Pass_List_Form", method = RequestMethod.GET)
	public void etp_first_pass_List(HttpServletRequest request, Model model, HttpSession session) throws Exception {
		Etp_LoginVO etp_infor = (Etp_LoginVO) request.getSession().getAttribute("etp_infor");
		int etp_no = etp_infor.getEtp_no();
		List<Etp_ExamVO> examList = service.pass_exam_list(etp_no);
		
		model.addAttribute("recruit_infor", service.recruit_infor(etp_no));
		model.addAttribute("pass_resume_list", service.pass_resume_list_all(etp_no));
		model.addAttribute("examlist", examList);
		
		request.getSession().setAttribute("pass_resume", service.pass_resume_list(etp_no));
	}

	@RequestMapping(value = "Etp_Pass_Update", method = RequestMethod.GET)
	public ResponseEntity<String> Etp_Pass_Update(@RequestParam("exam_no") int exam_no, @RequestParam("resume_no") int resume_no) throws Exception {
		ResponseEntity<String> entity = null;
		Mem_ReceivceVO mem_ReceiveVO = new Mem_ReceivceVO();
		mem_ReceiveVO.setResume_no(resume_no);
		mem_ReceiveVO.setExam_no(exam_no);
		try {
			service.Etp_Pass_Update(mem_ReceiveVO);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;

	}

}
