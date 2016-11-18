package com.jobis.mem.login.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.login.persistance.Mem_LoginDAO;


@Service
public class Mem_LoginServiceImpl implements Mem_LoginService{
	
	@Inject
	private Mem_LoginDAO mem_logindao;

	@Override
	public Mem_LoginVO Mem_LoginService_selelct(Mem_LoginVO loginvo) {
		
		return mem_logindao.Mem_LoginDAO_select(loginvo);
	}

}
