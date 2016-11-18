package com.jobis.mem.join.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.mem.join.domain.Mem_JoinVO;
import com.jobis.mem.join.persistance.Mem_JoinDAO;


@Service
public class Mem_JoinServiceImpl implements Mem_JoinService {

	@Inject
	private Mem_JoinDAO mem_joindao;
	
	
	@Override
	public void Mem_JoinService_create(Mem_JoinVO joinvo) {
		
		System.out.println(joinvo.getMember_email());
		mem_joindao.mem_create(joinvo);
		
	}
	
	

}
