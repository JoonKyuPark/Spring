package com.jobis.etp.pass.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.mem.notice.domain.Mem_NoticeVO;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;
import com.jobis.mem.resume.domain.Mem_ResumeVO;

@Repository
public class Etp_Pass_DAOImpl implements Etp_Pass_DAO{
	
	@Inject
	SqlSession sqlSession;
	
	private static final String namespace="org.spring.project.mappers.Etp_Pass_Mapper";

	@Override
	public List<Mem_RecruitVO> recruit_infor(int etp_no) throws Exception {
		return sqlSession.selectList(namespace+".recruit_infor", etp_no);
	}

	@Override
	public List<Mem_ResumeVO> pass_resume_list(int recruit_no) throws Exception {
		return sqlSession.selectList(namespace+".pass_resume_list", recruit_no);
	}

	@Override
	public List<Mem_ResumeVO> pass_resume_list_all(int etp_no) throws Exception {
		return sqlSession.selectList(namespace+".pass_resume_list_all", etp_no);
	}

	@Override
	public void Etp_Pass_Update(Mem_ReceivceVO mem_ReceiveVO) throws Exception {
		sqlSession.update(namespace+".etp_pass_update", mem_ReceiveVO);
	}

	@Override
	public List<Etp_ExamVO> pass_exam_list(int etp_no) throws Exception {
		return sqlSession.selectList(namespace + ".pass_exam_list", etp_no);
	}

	@Override
	public int pass_member_no(int resume_no) throws Exception {
		return sqlSession.selectOne(namespace + ".pass_member_no", resume_no);
	}

	@Override
	public Etp_ExamVO pass_exam_name(int exam_no) throws Exception {
		return sqlSession.selectOne(namespace + ".pass_exam_name", exam_no);
	}
	
	@Override
	public void pass_exam_notice(Mem_NoticeVO mem_noticeVO) throws Exception {
		sqlSession.insert(namespace + ".exam_notice_center", mem_noticeVO);
	}

	@Override
	public List<Mem_ResumeVO> Etp_Refresh_List(int rno) throws Exception {
		return sqlSession.selectList(namespace + ".etp_refresh_list", rno);
	}


}
