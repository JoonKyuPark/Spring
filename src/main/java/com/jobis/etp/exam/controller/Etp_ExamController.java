package com.jobis.etp.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobis.etp.exam.domain.Etp_ExamVO;

@Controller
@RequestMapping("/Main_Exam/*")
public class Etp_ExamController {
	
	
	@RequestMapping(value="/Etp_Exam_Reg", method=RequestMethod.GET)
	public String Etp_Exam_Reg_GET(Etp_ExamVO examVO){
		return "/Main_Exam/Etp_Exam_Reg";
	}
}
