package com.jobis.etp.join.persistance;

<<<<<<< HEAD
import java.util.List;
=======
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
	@Override
	public Etp_JoinVO etp_info_read(Integer etp_no) throws Exception {
		System.out.println(etp_no);
		return sqlsession.selectOne(namespace+".etp_info_read", etp_no);
	}

	@Override
	public void etp_info_update(Etp_JoinVO vo) throws Exception {
		sqlsession.update(namespace+".etp_info_update", vo);
	}

	
>>>>>>> refs/remotes/KimMinJeong/HanMuYoung

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.join.domain.Etp_JoinVO;



@Repository
public class Etp_JoinDAOImpl implements Etp_JoinDAO{
	
	@Inject
	private SqlSession sqlsession;
	private static final String namespace ="org.spring.project.mappers.Etp_Join_Mapper";
	/*
	@Override
	public void etp_JoinDAO_create(Etp_JoinVO joinVO) {
		
		sqlsession.insert(namespace+".etp_create", joinVO);
	}*/ 

	@Override
	public Etp_JoinVO etp_info_read(Integer etp_no) throws Exception {
		System.out.println(etp_no);
		return sqlsession.selectOne(namespace+".etp_info_read", etp_no);
	}

	@Override
	public void etp_info_update(Etp_JoinVO vo) throws Exception {
		sqlsession.update(namespace+".etp_info_update", vo);
	}

	@Override
	public List<Etp_JoinVO> etp_recruit_list() throws Exception {
		List<Etp_JoinVO> list = sqlsession.selectList(namespace+".etp_recruit_list");
		return list;
	}
}
