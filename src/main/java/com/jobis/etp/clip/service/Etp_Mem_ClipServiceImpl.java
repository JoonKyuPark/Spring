package com.jobis.etp.clip.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.clip.domain.Etp_Mem_ClipDTO;
import com.jobis.etp.clip.domain.Etp_Mem_ClipVO;
import com.jobis.etp.clip.domain.Mem_Resume_ClipDTO;
import com.jobis.etp.clip.persistance.Etp_Mem_ClipDAO;
import com.jobis.mem.login.domain.Mem_LoginVO;

@Service
public class Etp_Mem_ClipServiceImpl implements Etp_Mem_ClipService {

	@Inject
	private Etp_Mem_ClipDAO dao;

	@Override
	public void insert(Etp_Mem_ClipDTO dto) {
		dao.insert(dto);
	}

	@Override
	public List<Etp_Mem_ClipDTO> mem_clip_list() throws Exception {
		return dao.mem_clip_list();
	}

	@Override
	public Mem_Resume_ClipDTO mem_clip_read(Integer resume_no) throws Exception {
		return dao.mem_clip_read(resume_no);
	}

	@Override
	public void mem_eval_memo_update(Etp_Mem_ClipDTO dto) throws Exception {
		dao.mem_eval_memo_update(dto);
	}



	/*@Override
	public List<Etp_Mem_ClipVO> mem_clip_list() throws Exception {
		return dao.mem_clip_list();
	}*/

}
