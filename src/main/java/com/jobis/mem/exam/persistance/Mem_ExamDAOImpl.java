package com.jobis.mem.exam.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.mem.exam.domain.Mem_AnswerVO;
import com.jobis.mem.exam.domain.Mem_QuestionVO;
@Repository
public class Mem_ExamDAOImpl implements Mem_ExamDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.jobis.mappers.Mem_Exam_Mapper";
	@Override
	
	public List<Etp_ExamVO> mem_Exam_List() {
		return sqlSession.selectList(namespace + ".mem_Exam_List");
	}
	@Override
	public Etp_QuestionVO mem_Question_List(Mem_QuestionVO mem_QuestionVO)throws Exception {
		try {
			return sqlSession.selectOne(namespace + ".mem_Question_List", mem_QuestionVO);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}
	@Override
	public void mem_Answer_Create(Mem_AnswerVO mem_AnswerVO) {
		sqlSession.insert(namespace + ".mem_Answer_Create", mem_AnswerVO);
		
	}
	@Override
	public int mem_Question_Max(Mem_QuestionVO mem_QuestionVO) throws Exception {
		int max = sqlSession.selectOne(namespace + ".mem_Quesiton_Max", mem_QuestionVO);
		return max;
	}
	
	

}
