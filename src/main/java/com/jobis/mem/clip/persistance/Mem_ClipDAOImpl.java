package com.jobis.mem.clip.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.mem.clip.domain.Mem_ClipVO;

@Repository
public class Mem_ClipDAOImpl implements Mem_ClipDAO {
	
	@Inject 
	SqlSession sqlSession;
	private final static String namespace="org.spring.project.mappers.Mem_Clip_Mapper";

	@Override
	public void mem_Clip_Create(Mem_ClipVO mem_clip)throws Exception{
		sqlSession.insert(namespace+".mem_clip_create",mem_clip);
	}

	@Override
	public List<Mem_ClipVO> mem_Clip_List(int member_no) throws Exception {
		return sqlSession.selectList(namespace+".mem_Clip_List",member_no);
	}

	@Override
	public int mem_Clip_Count(int recruit_no) {
		return sqlSession.selectOne(namespace+".mem_Clip_Count", recruit_no);
	}

}
