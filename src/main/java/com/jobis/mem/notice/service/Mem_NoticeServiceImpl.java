package com.jobis.mem.notice.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.mem.notice.domain.Mem_NoticeVO;
import com.jobis.mem.notice.persistance.Mem_NoticeDAO;

@Service
public class Mem_NoticeServiceImpl implements Mem_NoticeService {
	
	@Inject
	private Mem_NoticeDAO dao;

	@Override
	public void mem_Notice_Create(Mem_NoticeVO notice) throws Exception {
		dao.mem_Notice_Create(notice);
	}
	
	
}
