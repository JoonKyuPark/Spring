package com.jobis.mem.recruit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;
import com.jobis.mem.recruit.persistance.Mem_RecruitDAO;

@Service
public class Mem_RecruitServiceImpl implements Mem_RecruitService {
	
	@Inject
	private Mem_RecruitDAO dao;

	@Override
	public List<Mem_RecruitVO> mem_Recruit_List() throws Exception {
		return dao.mem_Recruit_List();
	}

	@Override
	public Etp_JoinVO etp_Join_Read(int rno) throws Exception {
		return dao.etp_Join_Read(rno);
	}
	
	@Override
	public Mem_RecruitVO mem_Recruit_Read(int rno) throws Exception {
		return dao.mem_Recruit_Read(rno);
	}

}
