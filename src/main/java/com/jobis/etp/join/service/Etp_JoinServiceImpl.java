package com.jobis.etp.join.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.exam.persistance.Etp_ExamDAOImpl;
<<<<<<< HEAD
import com.jobis.etp.join.domain.Etp_JoinDTO;
import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.domain.Etp_JoinDTO;
import com.jobis.etp.join.persistance.Etp_JoinDAOImpl;


@Service
public class Etp_JoinServiceImpl  implements Etp_JoinService {
	
	
	@Inject
	private Etp_JoinDAOImpl joinDao;

	@Override

	/*public void Etp_joinService_create(Etp_joinDTO joindto) {
		joinDao.etp_JoinDAO_create(joindto);*/

	public void Etp_joinService_create(Etp_JoinDTO dto) {
		joinDao.etp_JoinDAO_create(dto);

		
	}

	@Override
	public String etp_idcheck(String etp_id) {
		
		return joinDao.etp_idcheck(etp_id);
	}

	
	@Override
	public Etp_JoinDTO etp_info_read(Integer etp_no) throws Exception {
		return joinDao.etp_info_read(etp_no);
	}

	@Override
	public void etp_info_update(Etp_JoinDTO dto) throws Exception {
		joinDao.etp_info_update(dto);
	}

	@Override
	public void etp_image_update(String etp_image, Integer etp_no) throws Exception {
		joinDao.etp_image_update(etp_image, etp_no);
=======
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
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
	}
	
}
