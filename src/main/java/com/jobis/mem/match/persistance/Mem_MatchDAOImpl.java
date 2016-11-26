package com.jobis.mem.match.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import com.jobis.etp.recruit.domain.Etp_RecruitVO;

@Repository
public class Mem_MatchDAOImpl implements Mem_MatchDAO {
	@Inject
	private SqlSession sqlSession;
	private static  String namespace = "org.spring.project.mappers.Mem_Match_Mapper";
	@Override
	public List<Etp_RecruitVO> mem_matching() {

		
		
		return sqlSession.selectList(namespace+".mem_login_select");
	}
	


	
	
	

}
