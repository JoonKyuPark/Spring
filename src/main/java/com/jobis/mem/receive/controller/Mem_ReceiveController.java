package com.jobis.mem.receive.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.receive.service.Mem_ReceiveService;

@Controller
@RequestMapping("/recruit/*")
public class Mem_ReceiveController {
	
	@Inject
	public Mem_ReceiveService service;
	
	@RequestMapping(value = "/mem_receive_create", method = RequestMethod.GET)
	public void mem_Receive_Create(@RequestParam("rno") int rno) throws Exception {
		Mem_ReceivceVO mem_receive=new Mem_ReceivceVO();
		mem_receive.setMember_no(1);
		mem_receive.setRecruit_no(rno);
		service.mem_Receive_Create(mem_receive);
	}
	

}
