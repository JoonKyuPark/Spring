package com.jobis.mem.exam.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_CountVO;
import com.jobis.mem.exam.domain.Mem_QuestionVO;
import com.jobis.mem.exam.persistance.Mem_ExamDAO;

@Service
public class Mem_ExamServiceImpl implements Mem_ExamService {

	@Inject
	private Mem_ExamDAO mem_ExamDAO;

	@Override
	public Etp_QuestionVO mem_Question_LIstService(Mem_QuestionVO mem_QuestionVO) throws Exception {
		try {
			return mem_ExamDAO.mem_Question_List(mem_QuestionVO);
		} catch (Exception e) {
			System.out.println("Mem_ExamServiceImpl.mem_Question_List Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void mem_Answer_CreateService(Mem_AnswerVO mem_AnswerVO) throws Exception {
		try {
			mem_ExamDAO.mem_Answer_Create(mem_AnswerVO);
		} catch (Exception e) {
			System.out.println("Mem_ExamServiceImpl.mem_Answer_CreateService Error!!!");
			e.printStackTrace();
		}
	}

	@Override
	public int mem_Question_MaxService(Mem_QuestionVO mem_QuestionVO) throws Exception {
		try {
			int max = mem_ExamDAO.mem_Question_Max(mem_QuestionVO);
			return max;
		} catch (Exception e) {
			System.out.println("Mem_ExamServiceImpl.mem_Question_MaxService Error!!!");
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public List<Etp_ExamVO> mem_Exam_ListService(int member_no) throws Exception {
		try {
			return mem_ExamDAO.mem_Exam_List(member_no);
		} catch (Exception e) {
			System.out.println("Mem_ExamServiceImpl.mem_Exam_ListService Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Etp_ExamVO> all_Exam_ListService(int member_no) throws Exception {
		try {
			return mem_ExamDAO.all_Exam_List(member_no);
		} catch (Exception e) {
			System.out.println("Mem_ExamServiceImpl.all_Exam_ListService Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void mem_Count_UpdateService(Mem_CountVO mem_CountVO) throws Exception {
		try {
			mem_ExamDAO.mem_Update_Count(mem_CountVO);
		} catch (Exception e) {
			System.out.println("Mem_ExamServiceImpl.mem_Count_UpdateService Error!!!");
			e.printStackTrace();
		}
	}

	@Override
	public Etp_QuestionVO select_Exam_AnswerService(int question_no) throws Exception {
		try {
			return mem_ExamDAO.select_Exam_Answer(question_no);
		} catch (Exception e) {
			System.out.println("Mem_ExamServiceImpl.select_Exam_AnswerService Error!!!");
			e.printStackTrace();
			return null;
		}
	}
}
