package com.jobis.etp.join.service;

<<<<<<< HEAD
import java.util.List;
=======
import javax.inject.Inject;
>>>>>>> refs/remotes/KimMinJeong/HanMuYoung

<<<<<<< HEAD
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

import com.jobis.etp.exam.persistance.Etp_ExamDAOImpl;
import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.persistance.Etp_JoinDAOImpl;


@Service
public class Etp_JoinServiceImpl  implements Etp_JoinService {
	
	
	@Inject
	private Etp_JoinDAOImpl joinDao;

/*
	@Override
	public void Etp_joinService_create(Etp_JoinVO joinVO) {
		joinDao.etp_JoinDAO_create(joinVO);
	}*/
	
/*
	@Override
	public Etp_JoinVO etp_info_update(Integer etp_no) throws Exception {
		
		return null;
	}
*/

	@Override
	public Etp_JoinVO etp_info_read(Integer etp_no) throws Exception {
		return joinDao.etp_info_read(etp_no);
	}

	@Override
	public void etp_info_update(Etp_JoinVO vo) throws Exception {
		joinDao.etp_info_update(vo);
	}

	@Override
	public List<Etp_JoinVO> etp_recruit_list() throws Exception {
		return joinDao.etp_recruit_list();
	}

	
=======
import org.springframework.stereotype.Service;

import com.jobis.etp.exam.persistance.Etp_ExamDAOImpl;
import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.persistance.Etp_JoinDAOImpl;


@Service
public class Etp_JoinServiceImpl  implements Etp_JoinService {
	
	
	@Inject
	private Etp_JoinDAOImpl joinDao;

	@Override
	public void Etp_joinService_create(Etp_JoinVO joinVO) {
		joinDao.etp_JoinDAO_create(joinVO);
		
	}

	@Override
	public String etp_idcheck(String etp_id) {
		
		return joinDao.etp_idcheck(etp_id);
	}

	
	@Override
	public Etp_JoinVO etp_info_read(Integer etp_no) throws Exception {
		return joinDao.etp_info_read(etp_no);
	}

	@Override
	public void etp_info_update(Etp_JoinVO vo) throws Exception {
		joinDao.etp_info_update(vo);
	}
>>>>>>> refs/remotes/KimMinJeong/HanMuYoung
	
}
