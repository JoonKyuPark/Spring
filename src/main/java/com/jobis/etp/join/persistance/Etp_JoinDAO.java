package com.jobis.etp.join.persistance;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.domain.Etp_joinDTO;

public interface Etp_JoinDAO {
	
	public void etp_JoinDAO_create(Etp_joinDTO joindto);
	
	public String etp_idcheck(String etp_id);
	
public Etp_JoinVO etp_info_read(Integer etp_no)throws Exception;
	
	public void etp_info_update(Etp_JoinVO vo) throws Exception;
	

}
