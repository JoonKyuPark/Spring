package com.jobis.etp.join.service;

import java.util.List;

import com.jobis.etp.join.domain.Etp_JoinDTO;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.domain.Etp_JoinDTO;

public interface Etp_JoinService {
	

/*	public void Etp_joinService_create(Etp_joinDTO etp_joindto);*/

	public void Etp_joinService_create(Etp_JoinDTO dto);

	
	public String etp_idcheck(String etp_id);
	
	public Etp_JoinDTO etp_info_read(Integer etp_no)throws Exception;
	

/*	public void etp_info_update(Etp_JoinVO vo)throws Exception;*/
	

	public void etp_info_update(Etp_JoinDTO dto)throws Exception;
	public void etp_image_update(String etp_image, Integer etp_no) throws Exception;

}
