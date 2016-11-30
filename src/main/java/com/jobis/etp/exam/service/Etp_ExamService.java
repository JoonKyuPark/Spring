package com.jobis.etp.exam.service;

import java.util.List;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.etp.exam.domain.SearchCriteria;
import com.jobis.mem.join.domain.Mem_JoinVO;

public interface Etp_ExamService {
	public void etp_Exam_CreateService(Etp_ExamVO etp_ExamVO)throws Exception;
	
	public List<Etp_ExamVO> etp_Exam_ListService(int etp_no)throws Exception;
	
	public List<Etp_ExamVO> etp_Exam_CriteriaService(SearchCriteria ca)throws Exception;
	
	public int etp_Exam_CountpageService(SearchCriteria ca)throws Exception;
	
	public Etp_ExamVO etp_Exam_SelectService(Integer exam_no)throws Exception;
	
	public void etp_Exam_UpdateService(Etp_ExamVO etp_ExamVO)throws Exception;
	
	public void etp_Exam_DeleteService(int exam_no)throws Exception;
	
	public void etp_Question_CreateService(Etp_QuestionVO etp_QuestionVO)throws Exception;
	
	public List<Etp_QuestionVO> etp_Question_ListService(int exam_no)throws Exception;
	
	public List<Mem_JoinVO> etp_Exam_MemberListService()throws Exception;
}
