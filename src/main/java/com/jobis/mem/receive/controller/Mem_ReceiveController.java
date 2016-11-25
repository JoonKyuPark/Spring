package com.jobis.mem.receive.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.mem.clip.domain.Mem_ClipVO;
import com.jobis.mem.join.domain.Mem_JoinVO;
import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.receive.service.Mem_ReceiveService;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;
import com.jobis.mem.recruit.service.Mem_RecruitService;
import com.jobis.mem.resume.domain.Mem_ResumeVO;

@Controller
@RequestMapping("/receive/*")
public class Mem_ReceiveController {

	@Inject
	public Mem_ReceiveService service;
	@Inject
	public Mem_RecruitService recruit_Service;

	@RequestMapping(value = "/mem_Join_Receive_Create_Form", method = RequestMethod.GET)
	public void mem_Receive_Create(@RequestParam("rno") int rno, HttpServletRequest request, Model model) throws Exception {
		Mem_LoginVO member_infor=(Mem_LoginVO) request.getSession().getAttribute("member_infor");
		int member_no=member_infor.getMember_no();
		model.addAttribute("recruit_read", recruit_Service.mem_Recruit_Read(rno));
		model.addAttribute("mem_resume", service.mem_resume_List(member_no));
		model.addAttribute("etp_infor", recruit_Service.etp_Join_Read(recruit_Service.mem_Recruit_Read(rno).getEtp_no()));
		model.addAttribute("basic_resume_no", service.basic_resume_no(member_no));
		
	}
	
	@RequestMapping(value = "/mem_Join_Receive_Create", method = RequestMethod.POST)
	public ResponseEntity<String> mem_Receive_Create(@RequestBody Mem_ResumeVO vo, @RequestParam("recruit_no") int recruit_no, HttpServletRequest request) throws Exception {
		Mem_LoginVO mem_info=(Mem_LoginVO) request.getSession().getAttribute("member_infor");
		int member_no=mem_info.getMember_no();
		ResponseEntity<String> entity=null;
		String overlap = "false";
		try{
			Mem_ReceivceVO mem_receive = new Mem_ReceivceVO();
			mem_receive.setResume_no(vo.getResume_no());
			mem_receive.setRecruit_no(recruit_no);
			
			//중복 지원 차단
			List<Integer> overlap_List=service.mem_receive_overlap_create(recruit_no);//지원한 사람 회원번호
			for(int i=0;i<overlap_List.size();i++){
				if(overlap_List.get(i).equals(member_no)){
					System.out.println("dd");
					overlap="true";
					break;
				}
			}
			if(overlap.equals("true")){
				entity=new ResponseEntity<String>("fail", HttpStatus.OK);
			}else if(overlap.equals("false")){
				service.mem_Receive_Create(mem_receive);
				entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			}
			
			
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		
		return entity;
		
	}
	
	@RequestMapping(value = "/mem_Join_Receive_List_Form", method = RequestMethod.GET)
	public void mem_Receive_List(Model model, HttpSession session) throws Exception {
		model.addAttribute("mem_receive_list", service.mem_Receive_List(1));
		int resume_no=service.resume_no(1);
		List<Mem_RecruitVO> recruit_List = new ArrayList<Mem_RecruitVO>();
		for (int i = 0; i < service.mem_Receive_List(resume_no).size(); i++) {
			Mem_RecruitVO mem_recruit=recruit_Service.mem_Recruit_Read(service.mem_Receive_List(resume_no).get(i).getRecruit_no());
			recruit_List.add(mem_recruit);
		}
		model.addAttribute("recruit_List",recruit_List);
		
		List<Etp_JoinVO> etp_List = new ArrayList<Etp_JoinVO>();
		for (int i = 0; i < recruit_List.size(); i++) {
			etp_List.add(recruit_Service.etp_Join_Read(recruit_List.get(i).getEtp_no()));
		}
		model.addAttribute("etp_List",etp_List);
	}

}
