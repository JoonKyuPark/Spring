package com.jobis.mem.notice.persistance;

import java.util.List;

import com.jobis.mem.notice.domain.Mem_NoticeVO;

public interface Mem_NoticeDAO {

	public void mem_Notice_Create(Mem_NoticeVO notice) throws Exception;

	public List<Mem_NoticeVO> mem_Notice_List(int member_no) throws Exception;
	
	public List<Mem_NoticeVO> mem_Notice_List_three(int member_no) throws Exception;
	
	
}
