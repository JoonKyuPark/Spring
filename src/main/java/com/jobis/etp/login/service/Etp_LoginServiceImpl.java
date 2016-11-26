package com.jobis.etp.login.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.etp.login.domain.Etp_loginDTO;
import com.jobis.etp.login.persistance.Etp_LoginDAO;

@Service
public class Etp_LoginServiceImpl implements Etp_LoginService {

	@Inject
	private Etp_LoginDAO loginDao;
	 
	
	
	@Override
	public Etp_LoginVO loginservice(Etp_loginDTO loginDTO)throws Exception {
		

		return  loginDao.loginselect(loginDTO);
	}


	
	

}
