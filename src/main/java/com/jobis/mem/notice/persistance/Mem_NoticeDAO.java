package com.jobis.mem.notice.persistance;

import com.jobis.mem.notice.domain.Mem_NoticeVO;

public interface Mem_NoticeDAO {
	
	public void mem_Notice_Create(Mem_NoticeVO notice) throws Exception;

}
