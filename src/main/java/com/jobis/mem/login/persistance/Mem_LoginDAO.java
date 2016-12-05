package com.jobis.mem.login.persistance;

import com.jobis.mem.login.domain.Mem_LoginDTO;
import com.jobis.mem.login.domain.Mem_LoginVO;


public interface Mem_LoginDAO {
	
	public Mem_LoginVO Mem_LoginDAO_select(Mem_LoginDTO mem_logindto);
	

	
	

}
