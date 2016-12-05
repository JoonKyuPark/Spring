package com.jobis.mem.join.persistance;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.mem.join.domain.Mem_JoinVO;
import com.jobis.mem.join.domain.Mem_joinDTO;


@Repository
public class Mem_JoinDAOImpl implements Mem_JoinDAO {

	@Inject
	private SqlSession sqlsession;
	private static final String namespace = "org.spring.project.mappers.Mem_Join_Mapper";
	
	
	@Override
	public void mem_create(Mem_joinDTO joindto) {

		sqlsession.insert(namespace+".mem_create", joindto);
	}
	
	@Override
	public String mem_idcheck(String mem_id) {
		
		return sqlsession.selectOne(namespace+".mem_idcheck",mem_id );
	}

}
