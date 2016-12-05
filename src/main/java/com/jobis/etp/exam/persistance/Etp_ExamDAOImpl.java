package com.jobis.etp.exam.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.exam.domain.Criteria;
import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_CountVO;
import com.jobis.mem.join.domain.Mem_JoinVO;

@Repository
public class Etp_ExamDAOImpl implements Etp_ExamDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.jobis.mappers.Etp_Exam_Mapper";

	@Override
	public void etp_Exam_Create(Etp_ExamVO etp_ExamVO) throws Exception {
		try {
			sqlSession.insert(namespace + ".etp_Exam_Create", etp_ExamVO);
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Exam_Create Error!!!");
			e.printStackTrace();
		}
	}

	@Override
	public List<Etp_ExamVO> etp_Exam_List(int etp_no) throws Exception {
		try {
			return sqlSession.selectList(namespace + ".etp_Exam_List", etp_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Exam_List Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Etp_ExamVO> etp_Exam_Criteria(Criteria ca) throws Exception {
		try {
			return sqlSession.selectList(namespace + ".etp_Exam_List", ca,
					new RowBounds(ca.getPageStart(), ca.getPerPageNum()));
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Exam_Criteria Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int etp_Exam_CountPage(Criteria ca) throws Exception {
		try{
			return sqlSession.selectOne(namespace + ".etp_Exam_CountPage", ca);
		}catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Exam_CountPage Error!!!");
			e.printStackTrace();
			return 0;
		}
	}

	@Override
	public Etp_ExamVO etp_Exam_Select(Integer exam_no) throws Exception {
		try {
			return sqlSession.selectOne(namespace + ".etp_Exam_Select", exam_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Exam_Select Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void etp_Exam_Update(Etp_ExamVO etp_ExamVO) throws Exception {
		try {
			sqlSession.update(namespace + ".etp_Exam_Update", etp_ExamVO);
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Exam_Update Error!!!");
			e.printStackTrace();
		}
	}

	@Override
	public void etp_Exam_Qdelete(int exam_no) throws Exception {
		try {
			sqlSession.delete(namespace + ".etp_Exam_Qdelete", exam_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Exam_Qdelete Error!!!");
			e.printStackTrace();
		}
	}

	@Override
	public void etp_Exam_Delete(int exam_no) throws Exception {
		try {
			sqlSession.delete(namespace + ".etp_Exam_Delete", exam_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Exam_Delete Error!!!");
			e.printStackTrace();
		}
	}

	@Override
	public void etp_Question_Create(Etp_QuestionVO etp_QuestionVO) throws Exception {
		try {
			if (sqlSession.selectOne(namespace + ".exam_Question_No", etp_QuestionVO.getExam_no()) == null) {
				etp_QuestionVO.setExam_question_no(1); //해당하는 시험에 문제가 존재하지 않을 경우 시험 번호를 1번으로 설정한다.
				sqlSession.insert(namespace + ".etp_Question_Create", etp_QuestionVO);
			} else {
				int exam_Question_No = sqlSession.selectOne(namespace + ".exam_Question_No", etp_QuestionVO);
				etp_QuestionVO.setExam_question_no(exam_Question_No + 1); // 그렇지 않을 경우 최대 시험번호 +1을 해준다.
				sqlSession.insert(namespace + ".etp_Question_Create", etp_QuestionVO);
			}
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Question_Create Error!!!");
			e.printStackTrace();
		}
	}

	@Override
	public List<Etp_QuestionVO> etp_Question_List(int exam_no) throws Exception {
		try {
			return sqlSession.selectList(namespace + ".etp_Question_List", exam_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Question_List Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Mem_JoinVO> etp_Exam_MemberList(int exam_no) throws Exception {
		try {
			return sqlSession.selectList(namespace + ".etp_Exam_MemberList", exam_no);
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.Etp_Exam_MemberList Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public List<Mem_AnswerVO> mem_Answer_List(Mem_CountVO mem_CountVO) throws Exception {
		try {
			return sqlSession.selectList(namespace + ".mem_Answer_List", mem_CountVO);
		} catch (Exception e) {
			System.out.println("Etp_ExamDAOImpl.mem_Answer_List Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void etp_Member_toCorrect(int ans_no) throws Exception {
		try {
			sqlSession.update(namespace + ".etp_Member_toCorrect", ans_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public void etp_Member_toIncorrect(int ans_no) throws Exception {
		try {
			sqlSession.update(namespace + ".etp_Member_toIncorrect", ans_no);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@Override
	public int mem_correct_answer(Mem_CountVO mem_CountVO) throws Exception {
		try {
			return sqlSession.selectOne(namespace + ".mem_correct_answer", mem_CountVO);
		} catch (Exception e) {
			return 0;
		}


	}
}
