package com.jobis.etp.join.service;

import com.jobis.etp.join.domain.Etp_JoinVO;

public interface Etp_JoinService {
	
	public void Etp_joinService_create(Etp_JoinVO joinVO);
	
	public String etp_idcheck(String etp_id);
	
}
