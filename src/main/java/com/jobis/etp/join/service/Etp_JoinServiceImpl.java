package com.jobis.etp.join.service;

import javax.inject.Inject;

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

}
