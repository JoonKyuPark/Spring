package com.jobis.mem.notice.service;

import java.util.List;

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

	@Override
	public List<Mem_NoticeVO> mem_Notice_List(int member_no) throws Exception {
		return dao.mem_Notice_List(member_no);
	}
	
	@Override
	public List<Mem_NoticeVO> mem_Notice_List_three(int member_no) throws Exception {
		return dao.mem_Notice_List_three(member_no);
	}
	
	
}
