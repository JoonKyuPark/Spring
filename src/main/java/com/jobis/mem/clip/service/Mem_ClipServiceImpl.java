package com.jobis.mem.clip.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.mem.clip.domain.Mem_ClipVO;
import com.jobis.mem.clip.persistance.Mem_ClipDAO;

@Service
public class Mem_ClipServiceImpl implements Mem_ClipService {
	
	@Inject
	public Mem_ClipDAO dao;

	@Override
	public void mem_Clip_Create(Mem_ClipVO mem_clip) throws Exception {
		dao.mem_Clip_Create(mem_clip);
		
	}

	@Override
	public List<Mem_ClipVO> mem_Clip_List(int member_no) throws Exception {
		return dao.mem_Clip_List(member_no);
	}

	@Override
	public int mem_Clip_Count(int recruit_no) throws Exception {
		return dao.mem_Clip_Count(recruit_no);
	}

}
