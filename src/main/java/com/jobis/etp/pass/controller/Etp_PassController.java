package com.jobis.etp.pass.controller;


import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.etp.pass.domain.Etp_Pass_Map;
import com.jobis.etp.pass.service.Etp_Pass_Service;
import com.jobis.mem.clip.domain.Mem_ClipVO;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.resume.domain.Mem_ResumeVO;

@Controller
@RequestMapping("/first_pass/*")
public class Etp_PassController {
	
	@Inject
	Etp_Pass_Service service;
	
	@RequestMapping(value="/etp_First_Pass_List_Form", method = RequestMethod.GET)
	public void etp_first_pass_List(HttpServletRequest request, Model model)throws Exception{
		Etp_LoginVO etp_infor=(Etp_LoginVO) request.getSession().getAttribute("etp_infor");
		System.out.println(etp_infor.getEtp_no());
		int etp_no=etp_infor.getEtp_no();
		model.addAttribute("recruit_infor",service.recruit_infor(etp_no));
		model.addAttribute("pass_resume_list",service.pass_resume_list_all(etp_no));
		
		request.getSession().setAttribute("pass_resume", service.pass_resume_list(22));
	}
	
	
	@RequestMapping(value="/Etp_Pass_Update", method = RequestMethod.POST)
	public ResponseEntity<String> Etp_Pass_Update(@RequestParam(value="recruit_no") int recruit_no)throws Exception{
		ResponseEntity<String> entity=null;
		try{
			service.Etp_Pass_Update(recruit_no);
			entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
		
	}

}
