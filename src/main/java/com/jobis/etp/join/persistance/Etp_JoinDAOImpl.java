package com.jobis.etp.join.persistance;

<<<<<<< HEAD
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.join.domain.Etp_JoinDTO;
import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.domain.Etp_JoinDTO;
=======
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.jobis.etp.join.domain.Etp_JoinVO;
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2



@Repository
public class Etp_JoinDAOImpl implements Etp_JoinDAO{
	
	
	
	
	@Inject
	private SqlSession sqlsession;
<<<<<<< HEAD
	private static final String namespace ="org.spring.project.mappers.Etp_Join_Mapper";
	
	
	

	@Override

/*	public void etp_JoinDAO_create(Etp_joinDTO joindto) {
 sqlsession.insert(namespace+".etp_create", joindto);
 * */

	public void etp_JoinDAO_create(Etp_JoinDTO dto) {

		sqlsession.insert(namespace+".etp_create", dto);

		
	}
	
	
	@Override
	public String etp_idcheck(String etp_id) {
		
		return sqlsession.selectOne(namespace+".etp_idcheck",etp_id);
	}
	@Override
	public Etp_JoinDTO etp_info_read(Integer etp_no) throws Exception {
		System.out.println(etp_no);
		return sqlsession.selectOne(namespace+".etp_info_read", etp_no);
	}

	@Override
	public void etp_info_update(Etp_JoinDTO dto) throws Exception {
		sqlsession.update(namespace+".etp_info_update", dto);
	}


	@Override
	public void etp_image_update(String etp_image, Integer etp_no) throws Exception {
		Map<String, Object> map = new HashMap<>();
		
		map.put("etp_image", etp_image);
		map.put("etp_no", etp_no);
		
		sqlsession.update(namespace + ".etp_image_update", map);
=======
	private static final String namespace ="com.jobis.mappers.Etp_Join_Mapper";
	
	
	

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
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
	}

	

}
