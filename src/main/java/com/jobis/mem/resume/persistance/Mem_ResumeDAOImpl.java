package com.jobis.mem.resume.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.mem.resume.domain.Mem_ResumeVO;
import com.jobis.mem.resume.domain.Mem_Resume_abilityVO;
import com.jobis.mem.resume.domain.Mem_Resume_allDTO;
import com.jobis.mem.resume.domain.Mem_Resume_careerListVO;
import com.jobis.mem.resume.domain.Mem_Resume_careerVO;
import com.jobis.mem.resume.domain.Mem_Resume_listDTO;

@Repository
public class Mem_ResumeDAOImpl implements Mem_ResumeDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "org.spring.project.mappers.Mem_Resume_Mapper";

	@Override
	public void mem_Resume_create(Mem_ResumeVO resumeVO, Mem_Resume_abilityVO abilityVO, Mem_Resume_careerListVO careerListVO) {

		sqlSession.insert(namespace + ".resume_create", resumeVO);
		int resume_no = resumeVO.getResume_no();
		
		abilityVO.setResume_no(resume_no);
		sqlSession.insert(namespace + ".resume_ability_create", abilityVO);
		
		
		System.out.println("다오 create");
		for(int i=0; i<careerListVO.getResumeListVO().size();i++){
			careerListVO.getResumeListVO().get(i).setResume_no(resume_no);
			sqlSession.insert(namespace + ".resume_career_create", careerListVO.getResumeListVO().get(i));
		}

	}

	@Override
	public void mem_Resume_update(Mem_ResumeVO resumeVO) {
		sqlSession.update(namespace + ".resume_update", resumeVO);
	}

	@Override
	public Mem_Resume_allDTO mem_Resume_select(Integer num) {
		Mem_Resume_allDTO allDTO = null;
		allDTO = sqlSession.selectOne(namespace + ".resume_select", num);
		return allDTO;
	}

	@Override
	public List<Mem_Resume_listDTO> mem_Resume_list() {
		List<Mem_Resume_listDTO> list = null;
		list = sqlSession.selectList(namespace + ".resume_list");
		return list;
	}

}
