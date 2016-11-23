package com.jobis.mem.exam.service;

import java.util.List;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_QuestionVO;

public interface Mem_ExamService {

	public List<Etp_ExamVO> mem_Exam_ListService();
	
	public Etp_QuestionVO mem_Question_LIstService(Mem_QuestionVO mem_QuestionVO)throws Exception;
	
	public void mem_Answer_CreateService(Mem_AnswerVO mem_AnswerVO);
	
	public int mem_Question_MaxService(Mem_QuestionVO mem_QuestionVO)throws Exception;
}
