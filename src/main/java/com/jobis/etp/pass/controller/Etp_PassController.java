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
		//request.getSession().setAttribute("pass_resume", 0);
		
		request.getSession().setAttribute("pass_resume", service.pass_resume_list(22));
	}
	/*@RequestMapping(value="/etp_First_Pass_List_Form", method = RequestMethod.GET)
	public ResponseEntity<String> etp_first_pass_List(@RequestParam(value="checkArray") String check, HttpServletRequest request, Model model)throws Exception{
		ResponseEntity<String> entity=null;
		if(check==null){
		
		Etp_LoginVO etp_infor=(Etp_LoginVO) request.getSession().getAttribute("etp_infor");
		int etp_no=etp_infor.getEtp_no();
		model.addAttribute("recruit_infor",service.recruit_infor(etp_no));
		}
		if(check!=null){
			
			try{
				String check_arr[] = check.split(",");
				int recruit_no[] = {22};
				for(int i=0;i<check_arr.length;i++){
					recruit_no[i]=Integer.parseInt(check_arr[i]);
				}
				model.addAttribute("pass_resume_list",service.pass_resume_list(22));
				entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			}catch (Exception e) {
				e.printStackTrace();
				entity=new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
			}
		}
		
		return entity;
	}*/
	
	@RequestMapping(value="/etp_First_Pass_List_Form", method = RequestMethod.POST)
	public Etp_Pass_Map pass_Resume(@RequestParam(value="checkArray") String check, Model model, HttpServletRequest request)throws Exception{
		Etp_Pass_Map etpMap=new Etp_Pass_Map();
		List<Mem_ResumeVO> list=null;
		ResponseEntity<String> entity=null;
		System.out.println("dd");
		try{
			String check_arr[] = check.split(",");
			int recruit_no[] = {22,23};
			for(int i=0;i<check_arr.length;i++){
				recruit_no[i]=Integer.parseInt(check_arr[i]);
			}
			
			//List<Mem_ResumeVO> list2=service.pass_resume_list(22);
			//System.out.println(list2.get(0).getMember_no()+"dd");
			//request.getSession().setAttribute("pass_resume", service.pass_resume_list(22));
			//model.addAttribute("pass_resume",service.pass_resume_list(22));
			//entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			list=service.pass_resume_list(22);
			etpMap.setList(list);
			
			entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			etpMap.setEntity(entity);
			
			System.out.println(etpMap.getList().get(0).getResume_no());
			System.out.println(etpMap.getEntity());
			//System.out.println(entity);
		}catch (Exception e) {
			e.printStackTrace();
			//entity=new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return etpMap;
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
