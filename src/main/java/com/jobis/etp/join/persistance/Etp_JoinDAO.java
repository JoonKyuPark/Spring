package com.jobis.etp.join.persistance;

import com.jobis.etp.join.domain.Etp_JoinVO;

public interface Etp_JoinDAO {
	
	public void etp_JoinDAO_create(Etp_JoinVO joinVO);
	
	public String etp_idcheck(String etp_id);
	

}
