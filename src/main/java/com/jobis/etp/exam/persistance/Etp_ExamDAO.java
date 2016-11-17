package com.jobis.etp.exam.persistance;

import java.util.List;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.SearchCriteria;

public interface Etp_ExamDAO {
	public void etp_Exam_Create(Etp_ExamVO etp_ExamVO)throws Exception;
	
	public List<Etp_ExamVO> etp_Exam_List()throws Exception;
	
	public List<Etp_ExamVO> etp_Exam_Criteria(SearchCriteria ca)throws Exception;

	public int etp_Exam_CountPage(SearchCriteria ca)throws Exception;
	
	public Etp_ExamVO etp_Exam_Select(Integer exam_no)throws Exception;
	
	public void etp_Exam_Update(Etp_ExamVO etp_ExamVO)throws Exception;
	
	public void etp_Exam_Qdelete(int exam_no)throws Exception;
	
	public void etp_Exam_Delete(int exam_no)throws Exception;
}
