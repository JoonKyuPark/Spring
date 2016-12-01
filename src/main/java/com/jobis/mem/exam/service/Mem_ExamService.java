package com.jobis.mem.exam.service;

import java.util.List;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_CountVO;
import com.jobis.mem.exam.domain.Mem_QuestionVO;

public interface Mem_ExamService {

	public List<Etp_ExamVO> mem_Exam_ListService(int member_no)throws Exception;
	
	public List<Etp_ExamVO> all_Exam_ListService(int member_no)throws Exception;
	
	public void mem_Count_UpdateService(Mem_CountVO mem_CountVO)throws Exception;
	
	public Etp_QuestionVO mem_Question_LIstService(Mem_QuestionVO mem_QuestionVO)throws Exception;
	
	public void mem_Answer_CreateService(Mem_AnswerVO mem_AnswerVO)throws Exception;
	
	public int mem_Question_MaxService(Mem_QuestionVO mem_QuestionVO)throws Exception;
	
	public Etp_QuestionVO select_Exam_AnswerService(int question_no)throws Exception;
	
}

