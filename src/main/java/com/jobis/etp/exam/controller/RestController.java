package com.jobis.etp.exam.controller;

import javax.inject.Inject;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jobis.etp.join.service.Etp_JoinService;
import com.jobis.mem.join.service.Mem_JoinService;

@org.springframework.web.bind.annotation.RestController
public class RestController {
	@Inject
	private Mem_JoinService mem_joinservice;
	@Inject
	private Etp_JoinService etp_joinservice;
	
	@RequestMapping("/mem/id_check{mem_id}")
	public String mem_idcheck(@PathVariable("mem_id")String mem_id){
	

		return 	mem_joinservice.mem_idcheck(mem_id);
	}
	
	@RequestMapping("/etp/id_check{etp}")
	public String etp_idcheck(@PathVariable("etp")String etp_id){
	
		
		return 	etp_joinservice.etp_idcheck(etp_id);
	}
	
	
	

}
