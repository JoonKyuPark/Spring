package com.jobis.mem.receive.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.receive.persistance.Mem_ReceiveDAO;

@Service
public class Mem_ReceiveServiceImpl implements Mem_ReceiveService {

	@Inject
	private Mem_ReceiveDAO dao;
	
	@Override
	public void mem_Receive_Create(Mem_ReceivceVO mem_receive) throws Exception {
		dao.mem_Receive_Create(mem_receive);
	}

	@Override
	public List<Mem_ReceivceVO> mem_Receive_List(int member_no) throws Exception {
		return dao.mem_Receive_List(member_no);
	}

}
