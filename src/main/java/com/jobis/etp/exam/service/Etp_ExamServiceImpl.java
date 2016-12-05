package com.jobis.etp.exam.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jobis.etp.exam.domain.Criteria;
import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.etp.exam.persistance.Etp_ExamDAO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_CountVO;
import com.jobis.mem.join.domain.Mem_JoinVO;

@Service
public class Etp_ExamServiceImpl implements Etp_ExamService {

	@Inject
	private Etp_ExamDAO etp_ExamDao;

	@Override
	public void etp_Exam_CreateService(Etp_ExamVO etp_ExamVO) throws Exception {
		try {
			etp_ExamDao.etp_Exam_Create(etp_ExamVO);
		} catch (Exception e) {
			System.out.println("Etp_ExamServiceImpl.Etp_Exam_CreateService Error!!!");
			e.printStackTrace();
		}
	}

	@Override
	public List<Etp_ExamVO> etp_Exam_ListService(int etp_no) throws Exception {
		try {
			return etp_ExamDao.etp_Exam_List(etp_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamServiceImpl.Etp_Exam_ListService Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Etp_ExamVO> etp_Exam_CriteriaService(Criteria ca) throws Exception {
		try {
			return etp_ExamDao.etp_Exam_Criteria(ca);
		} catch (Exception e) {
			System.out.println("Etp_ExamServiceImpl.Etp_Exam_CriteriaService Error!!!");
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public int etp_Exam_CountpageService(Criteria ca) throws Exception {
		try {
			return etp_ExamDao.etp_Exam_CountPage(ca);
		} catch (Exception e) {
			System.out.println("Etp_ExamServiceImpl.Etp_Exam_CountPageService Error!!!");
			e.printStackTrace();
			return 0;
		}

	}

	@Override
	public Etp_ExamVO etp_Exam_SelectService(Integer exam_no) throws Exception {
		try {
			return etp_ExamDao.etp_Exam_Select(exam_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamServiceImpl.Etp_Exam_SelectService Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void etp_Exam_UpdateService(Etp_ExamVO etp_ExamVO) throws Exception {
		try {
			etp_ExamDao.etp_Exam_Update(etp_ExamVO);
		} catch (Exception e) {
			System.out.println("Etp_ExamServiceImpl.Etp_Exam_UpdateService Error!!!");
			e.printStackTrace();
		}
		

	}

	@Override
	@Transactional
	public void etp_Exam_DeleteService(int exam_no) throws Exception {
		try {
			etp_ExamDao.etp_Exam_Qdelete(exam_no);
			etp_ExamDao.etp_Exam_Delete(exam_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamServiceImpl.Etp_Exam_DeleteService Error!!!");
			e.printStackTrace();
		}


	}

	@Override
	public void etp_Question_CreateService(Etp_QuestionVO etp_QuestionVO) throws Exception {
		try {
			etp_ExamDao.etp_Question_Create(etp_QuestionVO);
		} catch (Exception e) {
			System.out.println("Etp_ExamServiceImpl.Etp_Question_CreateService Error!!!");
			e.printStackTrace();
		}


	}

	@Override
	public List<Etp_QuestionVO> etp_Question_ListService(int exam_no) throws Exception {
		try {
			return etp_ExamDao.etp_Question_List(exam_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamServiceImpl.Etp_Question_ListService Error!!!");
			e.printStackTrace();
			return null;
		}
		
	}

	@Override
	public List<Mem_JoinVO> etp_Exam_MemberListService(int exam_no) throws Exception {
		try {
			return etp_ExamDao.etp_Exam_MemberList(exam_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamServiceImpl.Etp_Exam_MemberListService Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Mem_AnswerVO> mem_Answer_ListService(Mem_CountVO mem_CountVO) throws Exception {
		try {
			return etp_ExamDao.mem_Answer_List(mem_CountVO);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}

	@Override
	public void etp_Member_toCorrectService(int ans_no) throws Exception {
		try {
			etp_ExamDao.etp_Member_toCorrect(ans_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void etp_Member_toIncorrectService(int ans_no) throws Exception {
		try {
			etp_ExamDao.etp_Member_toIncorrect(ans_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public int mem_correct_answerService(Mem_CountVO mem_CountVO) throws Exception {
		try {
			return etp_ExamDao.mem_correct_answer(mem_CountVO);
		} catch (Exception e) {
			return 0;
		}

	}


}
