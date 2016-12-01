package com.jobis.mem.recruit.persistance;

import java.util.List;

import com.jobis.etp.join.domain.Etp_JoinVO;
<<<<<<< HEAD
import com.jobis.mem.recruit.domain.Mem_RecruitCriteria;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;

public interface Mem_RecruitDAO {
	
	public List<Mem_RecruitVO> mem_Recruit_List_Criteria(Mem_RecruitCriteria cri)throws Exception;
	public int countPageing(Mem_RecruitCriteria cri)throws Exception;
	
	public Etp_JoinVO etp_Join_Read(int rno) throws Exception;
	public Mem_RecruitVO mem_Recruit_Read(int rno) throws Exception;
	
	
=======
import com.jobis.mem.recruit.domain.Mem_RecruitVO;

public interface Mem_RecruitDAO {
	
	public List<Mem_RecruitVO> mem_Recruit_List()throws Exception;
	public Etp_JoinVO etp_Join_Read(int rno) throws Exception;
	public Mem_RecruitVO mem_Recruit_Read(int rno) throws Exception;
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
}
