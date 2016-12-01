package com.jobis.etp.join.persistance;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.domain.Etp_joinDTO;



@Repository
public class Etp_JoinDAOImpl implements Etp_JoinDAO{
	
	
	
	
	@Inject
	private SqlSession sqlsession;
	private static final String namespace ="org.spring.project.mappers.Etp_Join_Mapper";
	
	
	

	@Override
	public void etp_JoinDAO_create(Etp_joinDTO joindto) {
		
		sqlsession.insert(namespace+".etp_create", joindto);
		
	}
	
	
	@Override
	public String etp_idcheck(String etp_id) {
		
		return sqlsession.selectOne(namespace+".etp_idcheck",etp_id);
	}
	@Override
	public Etp_JoinVO etp_info_read(Integer etp_no) throws Exception {
		System.out.println(etp_no);
		return sqlsession.selectOne(namespace+".etp_info_read", etp_no);
	}

	@Override
	public void etp_info_update(Etp_JoinVO vo) throws Exception {
		sqlsession.update(namespace+".etp_info_update", vo);
	}

	

}
