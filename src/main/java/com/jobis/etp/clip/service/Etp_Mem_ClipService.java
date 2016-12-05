package com.jobis.etp.clip.service;

import java.util.List;

import com.jobis.etp.clip.domain.Etp_Mem_ClipDTO;
import com.jobis.etp.clip.domain.Etp_Mem_ClipVO;
import com.jobis.etp.clip.domain.Mem_Resume_ClipDTO;
import com.jobis.mem.login.domain.Mem_LoginVO;

public interface Etp_Mem_ClipService {
	public void insert(Etp_Mem_ClipDTO dto);
	//public List<Etp_Mem_ClipVO> mem_clip_list()throws Exception;
	
	///////////////////////////////
	
	public List<Etp_Mem_ClipDTO> mem_clip_list() throws Exception;
	public Mem_Resume_ClipDTO mem_clip_read(Integer resume_no)throws Exception;
	public void mem_eval_memo_update(Etp_Mem_ClipDTO dto)throws Exception;
	
}
