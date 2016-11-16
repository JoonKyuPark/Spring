package com.jobis.etp.exam.service;

import java.util.List;

import com.jobis.etp.exam.domain.Etp_ExamVO;

public interface Etp_ExamService {
	public void etp_Exam_CreateService(Etp_ExamVO etp_ExamVO)throws Exception;
	
	public List<Etp_ExamVO> etp_Exam_ListService(int etp_no)throws Exception;
}
