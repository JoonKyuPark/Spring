package com.jobis.etp.pass.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.etp.pass.service.Etp_Pass_Service;
import com.jobis.mem.notice.domain.Mem_NoticeVO;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.resume.domain.Mem_ResumeVO;

@Controller
@RequestMapping("/first_pass/*")
public class Etp_PassController {

	@Inject
	Etp_Pass_Service service;


	/*@RequestMapping(value = "/etp_First_Pass_List_Form", method = RequestMethod.GET)
	public void etp_first_pass_List(Model model, HttpSession session) throws Exception {
		Etp_LoginVO etp_infor = (Etp_LoginVO) session.getAttribute("etp_infor");
		int etp_no = etp_infor.getEtp_no();
		List<Etp_ExamVO> examList = service.pass_exam_list(etp_no);*/

	
	@RequestMapping(value="/etp_First_Pass_List_Form", method = RequestMethod.GET)
	public void etp_first_pass_List(HttpServletRequest request, Model model)throws Exception{
		Etp_LoginVO etp_infor=(Etp_LoginVO) request.getSession().getAttribute("etp_infor");
		System.out.println(etp_infor.getEtp_no());
		int etp_no=etp_infor.getEtp_no();
		model.addAttribute("recruit_infor",service.recruit_infor(etp_no));
		model.addAttribute("pass_resume_list",service.pass_resume_list_all(etp_no));

		
		model.addAttribute("recruit_infor", service.recruit_infor(etp_no));
		model.addAttribute("pass_resume_list", service.pass_resume_list_all(etp_no));
		//model.addAttribute("examlist", examList);
	}

/*	@ResponseBody
	@RequestMapping(value="/etp_Refresh_List", method = RequestMethod.GET)
	public List<Mem_ResumeVO> etp_refresh_list(@RequestParam("rno") int rno, Model model, HttpSession session)throws Exception{

		List<Mem_ResumeVO> list = service.Etp_Refresh_List(rno);
		model.addAttribute("list", list);
		for(int i = 0; i < list.size(); i++){
		}
		return list;
	}
	@ResponseBody
	@RequestMapping(value="/etp_Exam_List", method = RequestMethod.GET)
	public List<Etp_ExamVO> etp_Exam_List(Model model, HttpSession session)throws Exception{
		Etp_LoginVO etp_infor = (Etp_LoginVO)session.getAttribute("etp_infor");
		int etp_no = etp_infor.getEtp_no();
		List<Etp_ExamVO> examlist = service.pass_exam_list(etp_no);
		return examlist;
	}

	@RequestMapping(value = "Etp_Pass_Update", method = RequestMethod.GET)
	public ResponseEntity<String> Etp_Pass_Update(@RequestParam("exam_no") int exam_no, @RequestParam("resume_no") int resume_no) throws Exception {
		ResponseEntity<String> entity = null;
		SimpleDateFormat format = new SimpleDateFormat("yy/MM/dd");
		Etp_ExamVO examVO = service.pass_exam_name(exam_no);
		String exam_name = examVO.getExam_name();
		Date exam_sdate = examVO.getExam_sdate();

		String date = format.format(exam_sdate);
		int member_no = service.pass_member_no(resume_no);
		Mem_NoticeVO mem_noticeVO = new Mem_NoticeVO();
		String notice_name = "1차 면접에 합격하셨습니다.<br>"+date+"에 "+ exam_name + "이(가) 시작됩니다.";
		System.out.println(notice_name);
		System.out.println(member_no);
		System.out.println(exam_no);
		mem_noticeVO.setNotice_name(notice_name);
		mem_noticeVO.setMember_no(member_no);
		mem_noticeVO.setExam_no(exam_no);
		
		Mem_ReceivceVO mem_ReceiveVO = new Mem_ReceivceVO();
		mem_ReceiveVO.setResume_no(resume_no);
		mem_ReceiveVO.setExam_no(exam_no);
		
		try {
			service.Etp_Pass_Update(mem_ReceiveVO);

			service.pass_exam_notice(mem_noticeVO);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {*/

	
	@RequestMapping(value="/Etp_Pass_Update", method = RequestMethod.POST)
	public ResponseEntity<String> Etp_Pass_Update(@RequestParam(value="recruit_no") int recruit_no)throws Exception{
		ResponseEntity<String> entity=null;
		try{
			//service.Etp_Pass_Update(recruit_no);
			entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch (Exception e) {

			
			
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;

	}
	

}
