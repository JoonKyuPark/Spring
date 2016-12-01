package com.jobis.etp.recruit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.recruit.domain.Etp_RecruitDTO;
import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.etp.recruit.persistance.Etp_RecuritDAO;

@Service
public class Etp_RecuritServiceImpl implements Etp_RecuritService {

	@Inject
	private Etp_RecuritDAO dao;
	
	@Override
	public void etp_recruit_create(Etp_RecruitDTO dto) throws Exception {
		dao.etp_recruit_insert(dto);
	}
/*
	@Override
	public List<Etp_RecruitVO> etp_recruit_list() throws Exception {
		return dao.etp_recruit_list();
	}
*/

	@Override
	public List<Etp_RecruitDTO> etp_recruit_list() throws Exception {
		return dao.etp_recruit_list();
	}
}
