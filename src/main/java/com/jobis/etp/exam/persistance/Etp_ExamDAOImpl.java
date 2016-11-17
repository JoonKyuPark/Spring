package com.jobis.etp.exam.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.exam.domain.Etp_ExamVO;
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
	public List<Etp_ExamVO> etp_Exam_List() throws Exception {
		return sqlSession.selectList(namespace + ".etp_Exam_List");
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
	
	

}
