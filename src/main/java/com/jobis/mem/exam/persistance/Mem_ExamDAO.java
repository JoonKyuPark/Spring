package com.jobis.mem.exam.persistance;

import java.util.List;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_QuestionVO;

public interface Mem_ExamDAO {
	public List<Etp_ExamVO> mem_Exam_List();
	
	public Etp_QuestionVO mem_Question_List(Mem_QuestionVO mem_QuestionVO)throws Exception;
	
	public void mem_Answer_Create(Mem_AnswerVO mem_AnswerVO);
	
	public int mem_Question_Max(Mem_QuestionVO mem_QuestionVO)throws Exception;
}
