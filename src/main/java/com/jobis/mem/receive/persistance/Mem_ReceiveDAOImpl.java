package com.jobis.mem.receive.persistance;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.mem.receive.domain.Mem_ReceivceVO;

@Repository
public class Mem_ReceiveDAOImpl implements Mem_ReceiveDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="org.spring.project.mappers.Mem_Receive_Mapper";
	
	@Override
	public void mem_Receive_Create(Mem_ReceivceVO mem_receive) throws Exception {
		sqlSession.insert(namespace+".mem_receive_create",mem_receive);
	}
	
	

}
