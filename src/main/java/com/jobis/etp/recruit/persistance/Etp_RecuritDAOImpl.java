package com.jobis.etp.recruit.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.recruit.domain.Etp_RecruitVO;

@Repository
public class Etp_RecuritDAOImpl implements Etp_RecuritDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "org.spring.project.mappers.Etp_Recurit_Mapper";

	@Override
	public void etp_recruit_insert(Etp_RecruitVO vo) throws Exception {
		sqlSession.insert(namespace+".etp_recruit_create",vo);
	}
/*
	@Override
	public List<Etp_RecruitVO> etp_recruit_list() throws Exception {
		List<Etp_RecruitVO> list = sqlSession.selectList(namespace+".etp_recruit_list");
		return list;
	}*/
	
	
}
