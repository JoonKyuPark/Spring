package com.jobis.mem.login.persistance;

import javax.inject.Inject;
<<<<<<< HEAD
=======

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.mem.login.domain.Mem_LoginVO;

@Repository
public class Mem_LoginDAOImpl implements Mem_LoginDAO {
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2

<<<<<<< HEAD
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.mem.login.domain.Mem_LoginDTO;
import com.jobis.mem.login.domain.Mem_LoginVO;

@Repository
public class Mem_LoginDAOImpl implements Mem_LoginDAO {
	
	@Inject
	private SqlSession sqlsession;
	private static final String namespace="org.spring.project.mappers.Mem_Login_Mapper";

	@Override
	public Mem_LoginVO Mem_LoginDAO_select(Mem_LoginDTO mem_logindto) {
        System.out.println(mem_logindto.getMember_id());    
        System.out.println(mem_logindto.getMember_pwd());    

        Mem_LoginVO vo =  sqlsession.selectOne(namespace+".mem_login_select", mem_logindto);
        
		
		return vo;
	}



	
	
	
	

	
=======
	@Inject
	private SqlSession sqlsession;
	private static final String namespace="com.jobis.mappers.Mem_Login_Mapper";

	@Override
	public Mem_LoginVO Mem_LoginDAO_select(Mem_LoginVO loginvo) {
		System.out.println(loginvo.getMember_id());
		System.out.println(loginvo.getMember_pwd());

		return sqlsession.selectOne(namespace + ".mem_login_select", loginvo);
	}

>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
}
