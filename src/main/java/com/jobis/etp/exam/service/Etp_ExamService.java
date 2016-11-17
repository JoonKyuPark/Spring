package com.jobis.etp.exam.service;

import java.util.List;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.SearchCriteria;

public interface Etp_ExamService {
	public void etp_Exam_CreateService(Etp_ExamVO etp_ExamVO)throws Exception;
	
	public List<Etp_ExamVO> etp_Exam_ListService()throws Exception;
	
	public List<Etp_ExamVO> etp_Exam_CriteriaService(SearchCriteria ca)throws Exception;
	
	public int etp_Exam_CountpageService(SearchCriteria ca)throws Exception;
	
	public Etp_ExamVO etp_Exam_SelectService(Integer exam_no)throws Exception;
	
	public void etp_Exam_UpdateService(Etp_ExamVO etp_ExamVO)throws Exception;
	
	public void etp_Exam_DeleteService(int exam_no)throws Exception;
}
