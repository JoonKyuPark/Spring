package com.jobis.mem.exam.persistance;

import java.util.List;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_CountVO;
import com.jobis.mem.exam.domain.Mem_QuestionVO;

public interface Mem_ExamDAO {
	public List<Etp_ExamVO> mem_Exam_List(int member_no)throws Exception;
	
	public List<Etp_ExamVO> all_Exam_List(int member_no)throws Exception;
	
	public void mem_Update_Count(Mem_CountVO mem_CountVO)throws Exception;
	
	public Etp_QuestionVO mem_Question_List(Mem_QuestionVO mem_QuestionVO)throws Exception;
	
	public void mem_Answer_Create(Mem_AnswerVO mem_AnswerVO)throws Exception;
	
	public int mem_Question_Max(Mem_QuestionVO mem_QuestionVO)throws Exception;
}
