package com.jobis.mem.match.persistance;

import java.util.List;

import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.mem.login.domain.Mem_LoginVO;

public interface Mem_MatchDAO {
	
	public List<Etp_RecruitVO> mem_matching(Mem_LoginVO vo);
	
	

}
