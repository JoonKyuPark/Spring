package com.jobis.etp.join.service;

import java.util.List;

import com.jobis.etp.join.domain.Etp_JoinVO;

public interface Etp_JoinService {
	
	public void Etp_joinService_create(Etp_JoinVO joinVO);
	
	public String etp_idcheck(String etp_id);
	
public Etp_JoinVO etp_info_read(Integer etp_no)throws Exception;
	
	public void etp_info_update(Etp_JoinVO vo)throws Exception;
	

	
}
