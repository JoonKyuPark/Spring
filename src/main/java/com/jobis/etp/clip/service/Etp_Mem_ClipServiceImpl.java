package com.jobis.etp.clip.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.clip.domain.Etp_Mem_ClipVO;
import com.jobis.etp.clip.persistance.Etp_Mem_ClipDAO;

@Service
public class Etp_Mem_ClipServiceImpl implements Etp_Mem_ClipService {

	@Inject
	private Etp_Mem_ClipDAO dao;

	@Override
	public List<Etp_Mem_ClipVO> etp_mem_clip_list() throws Exception {
		return dao.etp_mem_clip_list();
	}

}
