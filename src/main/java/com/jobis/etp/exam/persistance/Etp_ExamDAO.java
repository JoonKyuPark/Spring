package com.jobis.etp.exam.persistance;

import java.util.List;

import com.jobis.etp.exam.domain.Criteria;
import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_CountVO;
import com.jobis.mem.join.domain.Mem_JoinVO;

public interface Etp_ExamDAO {
	public void etp_Exam_Create(Etp_ExamVO etp_ExamVO)throws Exception;
	
	public List<Etp_ExamVO> etp_Exam_List(int etp_no)throws Exception;
	
	public List<Etp_ExamVO> etp_Exam_Criteria(Criteria ca)throws Exception;

	public int etp_Exam_CountPage(Criteria ca)throws Exception;
	
	public Etp_ExamVO etp_Exam_Select(Integer exam_no)throws Exception;
	
	public void etp_Exam_Update(Etp_ExamVO etp_ExamVO)throws Exception;
	
	public void etp_Exam_Qdelete(int exam_no)throws Exception;
	
	public void etp_Exam_Delete(int exam_no)throws Exception;
	
	public void etp_Question_Create(Etp_QuestionVO etp_QuestionVO)throws Exception;
	
	public List<Etp_QuestionVO> etp_Question_List(int exam_no)throws Exception;
	
	public List<Mem_JoinVO> etp_Exam_MemberList(int exam_no)throws Exception;
	
	public List<Mem_AnswerVO>  mem_Answer_List(Mem_CountVO mem_CountVO)throws Exception;
	
	public void etp_Member_toCorrect(int ans_no)throws Exception;
	
	public void etp_Member_toIncorrect(int ans_no)throws Exception;
	
	public int mem_correct_answer(Mem_CountVO mem_CountVO)throws Exception;
	
}
