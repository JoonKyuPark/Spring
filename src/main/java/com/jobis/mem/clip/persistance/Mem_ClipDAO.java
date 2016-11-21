package com.jobis.mem.clip.persistance;

import java.util.List;

import com.jobis.mem.clip.domain.Mem_ClipVO;

public interface Mem_ClipDAO {

	public void mem_Clip_Create(Mem_ClipVO mem_clip)throws Exception;
	public List<Mem_ClipVO> mem_Clip_List(int member_no)throws Exception;
	public int mem_Clip_Count(int recruit_no);

}
