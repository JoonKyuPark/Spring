package com.jobis.etp.exam.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.etp.exam.domain.SearchCriteria;
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
	public List<Etp_ExamVO> etp_Exam_ListService() throws Exception {
		return etp_ExamDao.etp_Exam_List();
	}

	@Override
	public List<Etp_ExamVO> etp_Exam_CriteriaService(SearchCriteria ca) throws Exception {
		return etp_ExamDao.etp_Exam_Criteria(ca);
	}

	@Override
	public int etp_Exam_CountpageService(SearchCriteria ca) throws Exception {
		return etp_ExamDao.etp_Exam_CountPage(ca);
	}

	@Override
	public Etp_ExamVO etp_Exam_SelectService(Integer exam_no) throws Exception {
		return etp_ExamDao.etp_Exam_Select(exam_no);
	}

	@Override
	public void etp_Exam_UpdateService(Etp_ExamVO etp_ExamVO) throws Exception {
		etp_ExamDao.etp_Exam_Update(etp_ExamVO);
		
	}

	@Override
	@Transactional
	public void etp_Exam_DeleteService(int exam_no) throws Exception {
		etp_ExamDao.etp_Exam_Qdelete(exam_no);
		etp_ExamDao.etp_Exam_Delete(exam_no);
		
	}

	@Override
	public void etp_Question_CreateService(Etp_QuestionVO etp_QuestionVO) throws Exception {
		etp_ExamDao.etp_Question_Create(etp_QuestionVO);
		
	}

	@Override
	public List<Etp_QuestionVO> etp_Question_ListService(int exam_no) throws Exception {
		return etp_ExamDao.etp_Question_List(exam_no);
	}

}
