package com.jobis.etp.login.persistance;

import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.etp.login.domain.Etp_loginDTO;

public interface Etp_LoginDAO {
	
	public Etp_LoginVO loginselect(Etp_loginDTO loginDTO) throws Exception;
	

	

}
