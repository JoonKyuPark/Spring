package com.jobis.mem.join.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.mem.join.domain.Mem_JoinVO;
import com.jobis.mem.join.domain.Mem_joinDTO;
import com.jobis.mem.join.persistance.Mem_JoinDAO;


@Service
public class Mem_JoinServiceImpl implements Mem_JoinService {

	@Inject
	private Mem_JoinDAO mem_joindao;
	
	
	@Override
	public void Mem_JoinService_create(Mem_joinDTO joindto) {
		

		mem_joindao.mem_create(joindto);
		
	}


	@Override
	public String mem_idcheck(String mem_id) {

		return mem_joindao.mem_idcheck(mem_id);
	}
	
	

}
