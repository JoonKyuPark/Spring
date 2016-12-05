package com.jobis.mem.notice.persistance;

import javax.inject.Inject;
import javax.xml.stream.events.Namespace;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.mem.notice.domain.Mem_NoticeVO;

@Repository
public class Mem_NoticeDAOImpl implements Mem_NoticeDAO{
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="org.spring.project.mappers.Mem_Notice_Mapper";

	@Override
	public void mem_Notice_Create(Mem_NoticeVO notice) throws Exception {
		sqlSession.insert(namespace+".receive_create", notice);
		
	}

	
}
