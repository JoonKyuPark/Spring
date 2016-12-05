package com.jobis.mem.join.persistance;

import com.jobis.mem.join.domain.Mem_JoinVO;
import com.jobis.mem.join.domain.Mem_joinDTO;

public interface Mem_JoinDAO {
	
	
	public void mem_create(Mem_joinDTO joindto);
	
	public String mem_idcheck(String mem_id);

}
