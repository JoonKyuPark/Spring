package com.jobis.mem.receive.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.receive.service.Mem_ReceiveService;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;
import com.jobis.mem.recruit.service.Mem_RecruitService;

@Controller
@RequestMapping("/receive/*")
public class Mem_ReceiveController {

	@Inject
	public Mem_ReceiveService service;
	@Inject
	public Mem_RecruitService recruit_Service;

	@RequestMapping(value = "/mem_Join_Receive_Create", method = RequestMethod.GET)
	public String mem_Receive_Create(@RequestParam("rno") int rno) throws Exception {
		Mem_ReceivceVO mem_receive = new Mem_ReceivceVO();
		mem_receive.setMember_no(1);
		mem_receive.setRecruit_no(rno);
		service.mem_Receive_Create(mem_receive);
		return "redirect:/recruit/mem_Recruit_List_Form";

	}

	@RequestMapping(value = "/mem_Join_Receive_List_Form", method = RequestMethod.GET)
	public void mem_Receive_List(Model model, HttpSession session) throws Exception {
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

}
