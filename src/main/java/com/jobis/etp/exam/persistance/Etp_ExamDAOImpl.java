package com.jobis.etp.exam.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.exam.domain.Etp_ExamVO;
@Repository
public class Etp_ExamDAOImpl implements Etp_ExamDAO {
	
	@Inject 
	private SqlSession sqlSession;
	private static final String namespace = "com.jobis.mappers.Etp_Exam_Mapper";

	@Override
	public void etp_Exam_Create(Etp_ExamVO etp_ExamVO)throws Exception {
		sqlSession.insert(namespace + ".etp_Exam_Create", etp_ExamVO);
	}

	@Override
	public List<Etp_ExamVO> etp_Exam_List(int etp_no) throws Exception {
		sqlSession.selectList(namespace + ".etp_Exam_List", etp_no);
		return null;
	}

}
