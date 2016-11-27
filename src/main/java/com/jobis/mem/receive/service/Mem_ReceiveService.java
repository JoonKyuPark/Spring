package com.jobis.mem.receive.service;

import java.util.List;

import com.jobis.mem.receive.domain.Mem_ReceivceVO;

public interface Mem_ReceiveService {
	public void mem_Receive_Create(Mem_ReceivceVO mem_receive)throws Exception;

	public List<Mem_ReceivceVO> mem_Receive_List(int member_no) throws Exception;

}
