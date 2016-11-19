package com.jobis.etp.join.persistance;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.join.domain.Etp_JoinVO;



@Repository
public class Etp_JoinDAOImpl implements Etp_JoinDAO{
	
	
	
	
	@Inject
	private SqlSession sqlsession;
	private static final String namespace ="org.spring.project.mappers.Etp_Join_Mapper";
	
	
	

	@Override
	public void etp_JoinDAO_create(Etp_JoinVO joinVO) {
		
		sqlsession.insert(namespace+".etp_create", joinVO);
		
	}
	
	
	@Override
	public String etp_idcheck(String etp_id) {
		
		return sqlsession.selectOne(namespace+".etp_idcheck",etp_id);
	}

	

}
