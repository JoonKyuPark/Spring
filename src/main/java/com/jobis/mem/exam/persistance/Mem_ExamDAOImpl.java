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
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public Etp_QuestionVO mem_Question_List(Mem_QuestionVO mem_QuestionVO) throws Exception {
		try {
			return sqlSession.selectOne(namespace + ".mem_Question_List", mem_QuestionVO);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	@Override
	public void mem_Answer_Create(Mem_AnswerVO mem_AnswerVO) throws Exception {
		try {
			sqlSession.insert(namespace + ".mem_Answer_Create", mem_AnswerVO);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	@Override
	public int mem_Question_Max(Mem_QuestionVO mem_QuestionVO) throws Exception {
		int max = sqlSession.selectOne(namespace + ".mem_Quesiton_Max", mem_QuestionVO);
		return max;
	}

	@Override
	public List<Etp_ExamVO> all_Exam_List(int member_no) throws Exception {
		try {
			return sqlSession.selectList(namespace + ".all_Exam_List", member_no);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public void mem_Update_Count(Mem_CountVO mem_CountVO) throws Exception {
		try {
			System.out.println("DAO");
			sqlSession.update(namespace + ".mem_Exam_Count", mem_CountVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
