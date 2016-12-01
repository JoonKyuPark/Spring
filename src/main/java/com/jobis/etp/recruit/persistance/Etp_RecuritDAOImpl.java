package com.jobis.etp.recruit.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.recruit.domain.Etp_RecruitDTO;

@Repository
public class Etp_RecuritDAOImpl implements Etp_RecuritDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace = "org.spring.project.mappers.Etp_Recurit_Mapper";

	@Override
	public void etp_recruit_insert(Etp_RecruitDTO dto) throws Exception {
		sqlSession.insert(namespace+".etp_recruit_create",dto);
	}


	@Override
	public List<Etp_RecruitDTO> etp_recruit_list() throws Exception {
		List<Etp_RecruitDTO> list = sqlSession.selectList(namespace+".etp_recruit_list");
		return list;
	}


	
	
}
