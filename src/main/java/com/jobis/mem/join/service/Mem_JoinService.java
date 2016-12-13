package com.jobis.mem.join.service;

import com.jobis.mem.join.domain.Mem_JoinVO;
import com.jobis.mem.join.domain.Mem_joinDTO;

public interface Mem_JoinService {
	
	public void Mem_JoinService_create(Mem_joinDTO joindto);
	
	public String mem_idcheck(String mem_id);
	

}
