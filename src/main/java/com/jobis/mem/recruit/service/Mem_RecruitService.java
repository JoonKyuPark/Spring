package com.jobis.mem.recruit.service;

import java.util.List;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;

public interface Mem_RecruitService {
	public List<Mem_RecruitVO> mem_Recruit_List()throws Exception;
	public Etp_JoinVO etp_Join_Read(int rno) throws Exception;
	public Mem_RecruitVO mem_Recruit_Read(int rno) throws Exception;
}
