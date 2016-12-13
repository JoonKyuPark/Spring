package com.jobis.etp.clip.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.clip.domain.Etp_Mem_ClipDTO;
import com.jobis.etp.clip.domain.Etp_Mem_ClipVO;
import com.jobis.etp.clip.domain.Mem_Resume_ClipDTO;

@Repository
public class Etp_Mem_ClipDAOImpl implements Etp_Mem_ClipDAO {

	@Inject
	private SqlSession sqlSession;

	private static final String namespace = "org.spring.project.mappers.Etp_Clip_Mapper";

	@Override
	public void insert(Etp_Mem_ClipDTO dto) {
		sqlSession.insert(namespace + ".insertMemClip", dto);
	}

	@Override
	public List<Etp_Mem_ClipDTO> mem_clip_list() throws Exception {
		List<Etp_Mem_ClipDTO> list = sqlSession.selectList(namespace + ".mem_clip_list");

		return list;
	}

	@Override
	public Mem_Resume_ClipDTO mem_clip_read(Integer resume_no) {
		return sqlSession.selectOne(namespace+".mem_resume_read",resume_no);
	}

	@Override
	public void mem_eval_memo_update(Etp_Mem_ClipDTO dto) throws Exception {
		sqlSession.update(namespace+".mem_eval_memo_update", dto);
	}

	/*
	 * @Override public List<Etp_Mem_ClipVO> mem_clip_list() throws Exception {
	 * List<Etp_Mem_ClipVO> list = sqlSession.selectList(namespace +
	 * ".etp_recruit_list");
	 * 
	 * return list; }
	 */

}
