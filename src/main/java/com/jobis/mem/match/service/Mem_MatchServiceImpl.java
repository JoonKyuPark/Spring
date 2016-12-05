package com.jobis.mem.match.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.match.persistance.Mem_MatchDAO;

@Service
public class Mem_MatchServiceImpl implements Mem_MatchService {
	
	@Inject
   private Mem_MatchDAO mem_matchingdao;

	@Override
	public List<Etp_RecruitVO> mem_matching(Mem_LoginVO vo) {
		
	/*	return mem_matchingdao.mem_matching(Mem_LoginVO vo);*/
		return null;
	}

}
