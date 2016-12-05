package com.jobis.mem.match.service;

import java.util.List;

import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.mem.login.domain.Mem_LoginVO;

public interface Mem_MatchService {
	
	public List<Etp_RecruitVO> mem_matching(Mem_LoginVO vo);

}
