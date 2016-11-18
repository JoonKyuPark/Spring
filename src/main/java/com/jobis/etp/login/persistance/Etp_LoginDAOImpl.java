package com.jobis.etp.login.persistance;

import javax.inject.Inject;
import javax.xml.stream.events.Namespace;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.login.domain.Etp_LoginVO;

@Repository
public class Etp_LoginDAOImpl implements Etp_LoginDAO {
	@Inject
	private SqlSession sqlsession;
    private String namespace="org.spring.project.mappers.Etp_Login_Mapper";
	
	
	@Override
	public Etp_LoginVO loginselect(Etp_LoginVO loginVO) {
		Etp_LoginVO vo= new Etp_LoginVO();
		vo=sqlsession.selectOne(namespace+".etp_login_select",loginVO);
		
		return vo;
	}

}
