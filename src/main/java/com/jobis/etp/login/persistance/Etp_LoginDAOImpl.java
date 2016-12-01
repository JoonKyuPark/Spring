package com.jobis.etp.login.persistance;

import javax.inject.Inject;
import javax.xml.stream.events.Namespace;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.login.domain.Etp_LoginVO;
<<<<<<< HEAD
import com.jobis.etp.login.domain.Etp_loginDTO;
=======
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2

@Repository
public class Etp_LoginDAOImpl implements Etp_LoginDAO {
	@Inject
	private SqlSession sqlsession;
<<<<<<< HEAD
    private String namespace="org.spring.project.mappers.Etp_Login_Mapper";
	
	
	@Override
	public Etp_LoginVO loginselect(Etp_loginDTO loginDTO) {
		Etp_LoginVO vo= new Etp_LoginVO();
		vo=sqlsession.selectOne(namespace+".etp_login_select",loginDTO);
=======
    private String namespace="com.jobis.mappers.Etp_Login_Mapper";
	
	
	@Override
	public Etp_LoginVO loginselect(Etp_LoginVO loginVO) {
		Etp_LoginVO vo= new Etp_LoginVO();
		vo=sqlsession.selectOne(namespace+".etp_login_select",loginVO);
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
		
		return vo;
	}



}
