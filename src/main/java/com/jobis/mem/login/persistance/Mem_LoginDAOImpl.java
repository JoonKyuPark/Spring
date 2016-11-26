package com.jobis.mem.login.persistance;

import javax.inject.Inject;

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
		
        System.out.println("id : "+vo.getMember_id());
		return vo;
	}



	
	
	
	

	
}
