package com.jobis.etp.recruit.service;

import java.util.List;

import com.jobis.etp.recruit.domain.Etp_RecruitDTO;

public interface Etp_RecuritService {
	

	public void etp_recruit_create(Etp_RecruitDTO dto)throws Exception;
	public List<Etp_RecruitDTO> etp_recruit_list()throws Exception;
	//public List<Etp_RecruitVO> etp_recruit_list()throws Exception;

}
