package com.jobis.mem.notice.persistance;

import java.util.List;

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

	@Override
	public List<Mem_NoticeVO> mem_Notice_List(int member_no) throws Exception {
		return sqlSession.selectList(namespace+".mem_notice_list", member_no);
	}
	
	@Override
	public List<Mem_NoticeVO> mem_Notice_List_three(int member_no) throws Exception {
		return sqlSession.selectList(namespace+".mem_notice_list_three", member_no);
	}
	
	
	

	
}
