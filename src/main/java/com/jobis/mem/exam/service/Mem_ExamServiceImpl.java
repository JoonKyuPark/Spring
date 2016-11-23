package com.jobis.mem.exam.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_QuestionVO;
import com.jobis.mem.exam.persistance.Mem_ExamDAO;
@Service
public class Mem_ExamServiceImpl implements Mem_ExamService {

	@Inject
	private Mem_ExamDAO mem_ExamDAO;
	
	@Override
	public List<Etp_ExamVO> mem_Exam_ListService() {
		return mem_ExamDAO.mem_Exam_List();
	}

	@Override
	public Etp_QuestionVO mem_Question_LIstService(Mem_QuestionVO mem_QuestionVO)throws Exception{
		try {
			return mem_ExamDAO.mem_Question_List(mem_QuestionVO);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void mem_Answer_CreateService(Mem_AnswerVO mem_AnswerVO) {
		mem_ExamDAO.mem_Answer_Create(mem_AnswerVO);
		
	}

	@Override
	public int mem_Question_MaxService(Mem_QuestionVO mem_QuestionVO) throws Exception {
		int max = mem_ExamDAO.mem_Question_Max(mem_QuestionVO);
		return max;
	}

}
