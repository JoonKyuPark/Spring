package com.jobis.etp.clip.persistance;

import java.util.List;

import com.jobis.etp.clip.domain.Etp_Mem_ClipVO;

public interface Etp_Mem_ClipDAO {

	public List<Etp_Mem_ClipVO> etp_mem_clip_list()throws Exception;
}
