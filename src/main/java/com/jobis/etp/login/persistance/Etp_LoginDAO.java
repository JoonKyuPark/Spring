package com.jobis.etp.login.persistance;

import com.jobis.etp.login.domain.Etp_LoginVO;

public interface Etp_LoginDAO {
	
	public Etp_LoginVO loginselect(Etp_LoginVO loginVO) throws Exception;

}
