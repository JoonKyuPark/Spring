package com.jobis.etp.exam.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.persistance.Etp_ExamDAO;
@Service
public class Etp_ExamServiceImpl implements Etp_ExamService {

	@Inject
	private Etp_ExamDAO etp_ExamDao;
	
	@Override
	public void etp_Exam_CreateService(Etp_ExamVO etp_ExamVO)throws Exception{
		etp_ExamDao.etp_Exam_Create(etp_ExamVO);
	}

	@Override
	public List<Etp_ExamVO> etp_Exam_ListService(int etp_no) throws Exception {
		List<Etp_ExamVO> list = etp_ExamDao.etp_Exam_List(etp_no);
		return list;
	}

}
