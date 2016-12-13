package com.jobis.etp.login.service;

import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.etp.login.domain.Etp_loginDTO;

public interface Etp_LoginService {
	
	public Etp_LoginVO etp_loginservice_selelct(Etp_loginDTO loginDTO)throws Exception;
	


}
