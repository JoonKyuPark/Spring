package com.jobis.etp.exam.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.etp.exam.domain.Etp_QuestionVO;
import com.jobis.etp.exam.domain.SearchCriteria;

@Repository
public class Etp_ExamDAOImpl implements Etp_ExamDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.jobis.mappers.Etp_Exam_Mapper";

	@Override
	public void etp_Exam_Create(Etp_ExamVO etp_ExamVO) throws Exception {
		sqlSession.insert(namespace + ".etp_Exam_Create", etp_ExamVO);
	}

	@Override
	public List<Etp_ExamVO> etp_Exam_List(int etp_no) throws Exception {
		return sqlSession.selectList(namespace + ".etp_Exam_List", etp_no);
	}

	@Override
	public List<Etp_ExamVO> etp_Exam_Criteria(SearchCriteria ca) throws Exception {
		return sqlSession.selectList(namespace + ".etp_Exam_List", ca,
				new RowBounds(ca.getPageStart(), ca.getPerPageNum()));
	}

	@Override
	public int etp_Exam_CountPage(SearchCriteria ca) throws Exception {
		return sqlSession.selectOne(namespace + ".etp_Exam_CountPage", ca);
	}

	@Override
	public Etp_ExamVO etp_Exam_Select(Integer exam_no) throws Exception {
		return sqlSession.selectOne(namespace + ".etp_Exam_Select", exam_no);
	}

	@Override
	public void etp_Exam_Update(Etp_ExamVO etp_ExamVO) throws Exception {
		sqlSession.update(namespace + ".etp_Exam_Update", etp_ExamVO);
	}

	@Override
	public void etp_Exam_Qdelete(int exam_no) throws Exception {
		sqlSession.delete(namespace + ".etp_Exam_Qdelete", exam_no);
	}

	@Override
	public void etp_Exam_Delete(int exam_no) throws Exception {
		sqlSession.delete(namespace + ".etp_Exam_Delete", exam_no);

	}

	@Override
	public void etp_Question_Create(Etp_QuestionVO etp_QuestionVO) throws Exception {

		if (sqlSession.selectOne(namespace + ".exam_Question_No", etp_QuestionVO.getExam_no()) == null) {
			etp_QuestionVO.setExam_question_no(1); //해당하는 시험에 문제가 존재하지 않을 경우 시험 번호를 1번으로 설정한다.
			sqlSession.insert(namespace + ".etp_Question_Create", etp_QuestionVO);
		} else {
			int exam_Question_No = sqlSession.selectOne(namespace + ".exam_Question_No", etp_QuestionVO);
			etp_QuestionVO.setExam_question_no(exam_Question_No + 1); // 그렇지 않을 경우 최대 시험번호 +1을 해준다.
			sqlSession.insert(namespace + ".etp_Question_Create", etp_QuestionVO);
		}
	}

	@Override
	public List<Etp_QuestionVO> etp_Question_List(int exam_no) throws Exception {
		return sqlSession.selectList(namespace + ".etp_Question_List", exam_no);
	}
}
