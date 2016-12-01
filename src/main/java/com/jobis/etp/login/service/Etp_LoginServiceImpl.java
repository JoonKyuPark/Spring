package com.jobis.etp.login.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.etp.login.domain.Etp_loginDTO;
import com.jobis.etp.login.persistance.Etp_LoginDAO;
import com.jobis.mem.login.domain.Mem_LoginVO;

@Service
public class Etp_LoginServiceImpl implements Etp_LoginService {

	@Inject
	private Etp_LoginDAO loginDao;
	 
	
	
	@Override
	public Etp_LoginVO etp_loginservice_selelct(Etp_loginDTO loginDTO)throws Exception {
		
		loginDao.loginselect(loginDTO);
		Etp_LoginVO vo=	loginDao.loginselect(loginDTO);
		vo.pass();;
		System.out.println("비밀번호:"+vo.getEtp_pass());
		System.out.println("비밀번호2:"+loginDTO.getEtp_pass());
		if(vo.getEtp_pass().equals(loginDTO.getEtp_pass())){
			System.out.println("값이 다른가?>>");
			return vo;
		}else{
			return null;
		}

	}


	
	

}
