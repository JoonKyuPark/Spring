package com.jobis.etp.clip.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.etp.clip.domain.Etp_Mem_ClipVO;

@Repository
public class Etp_Mem_ClipDAOImpl implements Etp_Mem_ClipDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace ="org.spring.project.mappers.Etp_Clip_Mapper";

	@Override
	public List<Etp_Mem_ClipVO> etp_mem_clip_list() throws Exception {
		List<Etp_Mem_ClipVO> list = sqlSession.selectList(namespace + ".etp_recruit_list");

		return list;
	}
	
	

}
