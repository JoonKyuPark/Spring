package com.jobis.mem.exam.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_CountVO;
import com.jobis.mem.exam.domain.Mem_QuestionVO;

@Repository
public class Mem_ExamDAOImpl implements Mem_ExamDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.jobis.mappers.Mem_Exam_Mapper";

	@Override

	public List<Etp_ExamVO> mem_Exam_List(int member_no) throws Exception {
		try {
			return sqlSession.selectList(namespace + ".mem_Exam_List", member_no);
		} catch (Exception e) {
			System.out.println("Mem_ExamDAOImpl.mem_Exam_List Error!!!");
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public Etp_QuestionVO mem_Question_List(Mem_QuestionVO mem_QuestionVO) throws Exception {
		try {
			return sqlSession.selectOne(namespace + ".mem_Question_List", mem_QuestionVO);
		} catch (Exception e) {
			System.out.println("Mem_ExamDAOImpl.mem_Question_List Error!!!");
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public void mem_Answer_Create(Mem_AnswerVO mem_AnswerVO) throws Exception {
		try {
			sqlSession.insert(namespace + ".mem_Answer_Create", mem_AnswerVO);
		} catch (Exception e) {
			System.out.println("Mem_ExamDAOImpl.mem_Answer_Create Error!!!");
			e.printStackTrace();
		}

	}

	@Override
	public int mem_Question_Max(Mem_QuestionVO mem_QuestionVO) throws Exception {
		try{
		int max = sqlSession.selectOne(namespace + ".mem_Quesiton_Max", mem_QuestionVO);
		return max;
		}catch (Exception e) {
			System.out.println("Mem_ExamDAOImpl.mem_Question_Max Error!!!");
			return 0;
		}
	}

	@Override
	public List<Etp_ExamVO> all_Exam_List(int member_no) throws Exception {
		try {
			return sqlSession.selectList(namespace + ".all_Exam_List", member_no);
		} catch (Exception e) {
			System.out.println("Mem_ExamDAOImpl.all_Exam_List Error!!!");
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void mem_Update_Count(Mem_CountVO mem_CountVO) throws Exception {
		try {
			sqlSession.update(namespace + ".mem_Exam_Count", mem_CountVO);
		} catch (Exception e) {
			System.out.println("Mem_ExamDAOImpl.mem_Update_Count Error!!!");
			e.printStackTrace();
		}
	}

	@Override
	public Etp_QuestionVO select_Exam_Answer(int question_no) throws Exception {
		try {
			return sqlSession.selectOne(namespace + ".select_Exam_Answer", question_no);
		} catch (Exception e) {
			System.out.println("Mem_ExamDAOImpl.select_Exam_Answer Error!!!");
			e.printStackTrace();
			return null;
		}
	}

}
