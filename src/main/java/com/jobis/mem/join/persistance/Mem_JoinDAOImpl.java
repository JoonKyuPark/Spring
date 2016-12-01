package com.jobis.mem.join.persistance;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.mem.join.domain.Mem_JoinVO;
<<<<<<< HEAD
import com.jobis.mem.join.domain.Mem_joinDTO;
=======
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2


@Repository
public class Mem_JoinDAOImpl implements Mem_JoinDAO {

	@Inject
	private SqlSession sqlsession;
<<<<<<< HEAD
	private static final String namespace = "org.spring.project.mappers.Mem_Join_Mapper";
	
	
	@Override
	public void mem_create(Mem_joinDTO joindto) {

		sqlsession.insert(namespace+".mem_create", joindto);
=======
	private static final String namespace = "com.jobis.mappers.Mem_Join_Mapper";
	
	
	@Override
	public void mem_create(Mem_JoinVO joinvo) {
		System.out.println(joinvo.getMember_email());
		System.out.println(joinvo.getMember_phone());
		System.out.println(joinvo.getMember_pwd());
		System.out.println(joinvo.getMember_id());

		sqlsession.insert(namespace+".mem_create", joinvo);
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
	}
	
	@Override
	public String mem_idcheck(String mem_id) {
		
		return sqlsession.selectOne(namespace+".mem_idcheck",mem_id );
	}

}
