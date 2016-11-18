package com.jobis.mem.receive.persistance;

import java.util.List;

import com.jobis.mem.receive.domain.Mem_ReceivceVO;

public interface Mem_ReceiveDAO {

	public void mem_Receive_Create(Mem_ReceivceVO mem_receive) throws Exception;

	public List<Mem_ReceivceVO> mem_Receive_List(int member_no)throws Exception;
}
