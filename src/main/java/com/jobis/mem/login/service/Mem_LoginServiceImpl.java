package com.jobis.mem.login.service;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.recruit.service.Etp_RecuritService;
import com.jobis.etp.recruit.service.Etp_RecuritServiceImpl;
import com.jobis.mem.login.domain.Mem_LoginDTO;
import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.login.persistance.Mem_LoginDAO;



@Service
public class Mem_LoginServiceImpl implements Mem_LoginService{
	
	
	@Inject
	private Mem_LoginDAO mem_logindao;



	@Override
	public Mem_LoginVO Mem_LoginService_selelct(Mem_LoginDTO mem_logindto) {
		Mem_LoginVO VO=	mem_logindao.Mem_LoginDAO_select(mem_logindto);
		VO.pass();
		System.out.println("비밀번호:"+VO.getMember_pwd());
		System.out.println("비밀번호2:"+mem_logindto.getMember_pwd());
		if(VO.getMember_pwd().equals(mem_logindto.getMember_pwd())){
			System.out.println("값이 다른가?>>");
			return VO;
		}else{
			return null;
		}
	
		
	}


}
