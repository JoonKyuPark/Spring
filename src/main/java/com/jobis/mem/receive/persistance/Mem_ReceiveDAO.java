package com.jobis.mem.receive.persistance;

import java.util.List;

import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.resume.domain.Mem_ResumeVO;

public interface Mem_ReceiveDAO {

	public void mem_Receive_Create(Mem_ReceivceVO mem_receive) throws Exception;

	public List<Mem_ReceivceVO> mem_Receive_List(int resume_no)throws Exception;
	
	public int resume_no(int member_no) throws Exception;
	
	public List<Mem_ResumeVO> mem_resume_List(int member_no) throws Exception;
	
	public Integer basic_resume_no(int member_no) throws Exception;
	
	public List<Integer> mem_receive_overlap_create(int recruit_no)throws Exception;
}
