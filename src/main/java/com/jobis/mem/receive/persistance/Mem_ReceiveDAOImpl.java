package com.jobis.mem.receive.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.resume.domain.Mem_ResumeVO;

@Repository
public class Mem_ReceiveDAOImpl implements Mem_ReceiveDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="org.spring.project.mappers.Mem_Receive_Mapper";
	
	@Override
	public void mem_Receive_Create(Mem_ReceivceVO mem_receive) throws Exception {
		sqlSession.insert(namespace+".mem_receive_create",mem_receive);
	}

	@Override
	public List<Mem_ReceivceVO> mem_Receive_List(int resume_no) throws Exception {
		return sqlSession.selectList(namespace+".mem_receive_list", resume_no);
	}
	
	@Override
	public int resume_no(int member_no) throws Exception {
		return sqlSession.selectOne(namespace+".mem_no", member_no);
	}
	
	@Override
	public List<Mem_ResumeVO> mem_resume_List(int member_no) throws Exception {
		return sqlSession.selectList(namespace+".mem_resume_List", member_no);
	}
	
	@Override
	public Integer basic_resume_no(int member_no) throws Exception {
		return sqlSession.selectOne(namespace+".basic_resume_no", member_no);
	}
	
	@Override
	public List<Integer> mem_receive_overlap_create(int recruit_no)throws Exception{
		return sqlSession.selectList(namespace+".mem_receive_overlap_create" ,recruit_no);
	}
	
	
	

}
