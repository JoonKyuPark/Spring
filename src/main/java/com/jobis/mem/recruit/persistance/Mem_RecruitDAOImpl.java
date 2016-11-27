package com.jobis.mem.recruit.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;

@Repository
public class Mem_RecruitDAOImpl implements Mem_RecruitDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="org.spring.project.mappers.Mem_Recurit_Mapper";
	
	@Override
	public List<Mem_RecruitVO> mem_Recruit_List() throws Exception {
		return sqlSession.selectList(namespace+".recruit_List");
	}

	@Override
	public Etp_JoinVO etp_Join_Read(int rno) throws Exception {
		return sqlSession.selectOne(namespace+".etp_read", rno);
	}
	
	@Override
	public Mem_RecruitVO mem_Recruit_Read(int rno) throws Exception {
		return sqlSession.selectOne(namespace+".recruit_Read", rno);
	}
}
