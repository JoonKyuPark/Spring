package com.jobis.mem.join.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.mem.join.domain.Mem_JoinVO;
<<<<<<< HEAD
import com.jobis.mem.join.domain.Mem_joinDTO;
=======
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
import com.jobis.mem.join.persistance.Mem_JoinDAO;


@Service
public class Mem_JoinServiceImpl implements Mem_JoinService {

	@Inject
	private Mem_JoinDAO mem_joindao;
	
	
	@Override
<<<<<<< HEAD
	public void Mem_JoinService_create(Mem_joinDTO joindto) {
		

		mem_joindao.mem_create(joindto);
=======
	public void Mem_JoinService_create(Mem_JoinVO joinvo) {
		
		System.out.println(joinvo.getMember_email());
		mem_joindao.mem_create(joinvo);
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
		
	}


	@Override
	public String mem_idcheck(String mem_id) {

		return mem_joindao.mem_idcheck(mem_id);
	}
	
	

}
