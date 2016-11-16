package com.jobis.etp.exam.persistance;

import java.util.List;

import com.jobis.etp.exam.domain.Etp_ExamVO;

public interface Etp_ExamDAO {
	public void etp_Exam_Create(Etp_ExamVO etp_ExamVO)throws Exception;
	
	public List<Etp_ExamVO> etp_Exam_List(int etp_no)throws Exception;
}
