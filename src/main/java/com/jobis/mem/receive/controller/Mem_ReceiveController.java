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
import com.jobis.mem.notice.domain.Mem_NoticeVO;
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
	public void mem_Receive_List(Model model, HttpSession session) throws Exception {//회원이 입시지원한 리스트 확인
		//회원번호에 따른 이력서번호
		int resume_no=service.resume_no(1);
		model.addAttribute("mem_receive_list", service.mem_Receive_List(1));
		List<Mem_RecruitVO> recruit_List = new ArrayList<Mem_RecruitVO>();
		for (int i = 0; i < service.mem_Receive_List(1).size(); i++) {
			Mem_RecruitVO mem_recruit=recruit_Service.mem_Recruit_Read(service.mem_Receive_List(1).get(i).getRecruit_no());
			recruit_List.add(mem_recruit);
		}
		model.addAttribute("recruit_List",recruit_List);
		List<Etp_JoinVO> etp_List = new ArrayList<Etp_JoinVO>();
		for (int i = 0; i < recruit_List.size(); i++) {
			etp_List.add(recruit_Service.etp_Join_Read(recruit_List.get(i).getEtp_no()));
		}
		model.addAttribute("etp_List",etp_List);
		
		
	}
	
	
	@RequestMapping(value = "/mem_Join_Receive_Reserv_Create_Form", method = RequestMethod.GET)
	public void mem_Receive_Reserv_Create(@RequestParam("rno") int rno, HttpServletRequest request, Model model) throws Exception {
		Mem_LoginVO member_infor=(Mem_LoginVO) request.getSession().getAttribute("member_infor");
		int member_no=member_infor.getMember_no();
		model.addAttribute("recruit_read", recruit_Service.mem_Recruit_Read(rno));
		model.addAttribute("mem_resume", service.mem_resume_List(member_no));
		model.addAttribute("etp_infor", recruit_Service.etp_Join_Read(recruit_Service.mem_Recruit_Read(rno).getEtp_no()));
		model.addAttribute("basic_resume_no", service.basic_resume_no(member_no));
		
	}
	
	@RequestMapping(value = "/mem_Join_Receive_Reserv_Create_Form", method = RequestMethod.POST)
	public ResponseEntity<String> mem_Receive_Reserv_Create(@RequestBody Mem_ResumeVO vo, @RequestParam("recruit_no") int recruit_no, HttpServletRequest request) throws Exception {
		Mem_LoginVO mem_info=(Mem_LoginVO) request.getSession().getAttribute("member_infor");
		int member_no=mem_info.getMember_no();
		ResponseEntity<String> entity=null;
		String overlap = "false";
		try{
			//입사지원 객체
			Mem_ReceivceVO mem_receive = new Mem_ReceivceVO();
			mem_receive.setResume_no(vo.getResume_no());
			mem_receive.setRecruit_no(recruit_no);
		
			
			//알림 객체 
			Mem_NoticeVO mem_notice=new Mem_NoticeVO();
			mem_notice.setMember_no(member_no);
			mem_notice.setNotice_type("receive");
			mem_notice.setNotice_name("예약한 입사지원이 되었습니다.");
			mem_notice.setExam_question_no(0);
			mem_notice.setSmart_match_no(0);
			mem_notice.setMem_submit_no(0);
			
			
			//중복 지원 차단
			List<Integer> overlap_List=service.mem_receive_overlap_create(recruit_no);//지원한 사람 회원번호
			for(int i=0;i<overlap_List.size();i++){
				if(overlap_List.get(i).equals(member_no)){
					overlap="true";
					break;
				}
			}
			if(overlap.equals("true")){//중복인경우
				entity=new ResponseEntity<String>("fail", HttpStatus.OK);
			}else if(overlap.equals("false")){//중복되지 않을경우
				//DB에서 DDATE가져오기
				Mem_RecruitVO recruit_infor=recruit_Service.mem_Recruit_Read(recruit_no);
				String ddate=recruit_infor.getReceive_ddate();
				String ddate_arr[]=ddate.split("/");
				int month=Integer.parseInt(ddate_arr[0]);
				int day=Integer.parseInt(ddate_arr[1]);
				int year=Integer.parseInt(ddate_arr[2]);
				
				//쓰레드 이용하여 예약, 알림 구현
				Mem_Receive_Reserv_Thread thread=new Mem_Receive_Reserv_Thread(year, month, day, 14, 42, mem_receive, mem_notice);
				thread.start(); // 지정된 시간까지 정지 시킴
				entity=new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
				
				
			  }
		}catch (Exception e) {
			e.printStackTrace();
			entity=new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		
		return entity;
		
	}
	
}
