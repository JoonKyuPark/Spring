package com.jobis.mem.resume.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.jobis.mem.resume.domain.Mem_ResumeVO;
import com.jobis.mem.resume.domain.Mem_Resume_abilityVO;
import com.jobis.mem.resume.domain.Mem_Resume_careerVO;

import com.jobis.mem.resume.domain.Mem_ResumeDTO;
import com.jobis.mem.resume.domain.Mem_Resume_abilityDTO;
import com.jobis.mem.resume.domain.Mem_Resume_allVO;
import com.jobis.mem.resume.domain.Mem_Resume_careerListDTO;
import com.jobis.mem.resume.domain.Mem_Resume_defaultResumeDTO;
import com.jobis.mem.resume.domain.Mem_Resume_fileDTO;
import com.jobis.mem.resume.domain.Mem_Resume_fileVO;
import com.jobis.mem.resume.domain.Mem_Resume_listVO;
import com.jobis.mem.resume.domain.Mem_Resume_resumeOpenDTO;

@Repository
public class Mem_ResumeDAOImpl implements Mem_ResumeDAO {
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "org.spring.project.mappers.Mem_Resume_Mapper";

	@Override
	public void mem_Resume_create(Mem_ResumeDTO resumeDTO, Mem_Resume_abilityDTO abilityDTO, Mem_Resume_careerListDTO careerListDTO) {

		sqlSession.insert(namespace + ".resume_create", resumeDTO);
		int resume_no = resumeDTO.getResume_no();

		abilityDTO.setResume_no(resume_no);
		sqlSession.insert(namespace + ".resume_ability_create", abilityDTO);

		if (resumeDTO.getCareer_check() == "경력") {
			for (int i = 0; i < careerListDTO.getResumeListDTO().size(); i++) {
				careerListDTO.getResumeListDTO().get(i).setResume_no(resume_no);
				sqlSession.insert(namespace + ".resume_career_create", careerListDTO.getResumeListDTO().get(i));
				System.out.println("퇴사이유" + careerListDTO.getResumeListDTO().get(i).getRetire_reason());
			}
		}

	}

	@Override
	public void mem_Resume_update(Mem_ResumeDTO resumeDTO) {
		sqlSession.update(namespace + ".resume_update", resumeDTO);
	}

	@Override
	public Mem_Resume_allVO mem_Resume_select(Integer num) {
		Mem_Resume_allVO allVO = new Mem_Resume_allVO();

		Mem_ResumeVO resumeVO = sqlSession.selectOne(namespace + ".resume_select", num);
		Mem_Resume_abilityVO abilityVO = sqlSession.selectOne(namespace + ".ac_ability_select", num);
		List<Mem_Resume_careerVO> careerListVO = sqlSession.selectList(namespace + ".career_select", num);

		allVO.setResumeVO(resumeVO);
		allVO.setAc_abilityVO(abilityVO);
		allVO.setCareerVO(careerListVO);

		return allVO;

	}

	@Override
	public List<Mem_Resume_listVO> mem_Resume_list() {
		List<Mem_Resume_listVO> list = null;
		list = sqlSession.selectList(namespace + ".resume_list");
		return list;
	}

	@Override
	public void mem_Resume_defaultResume_update(Mem_Resume_defaultResumeDTO de_resumeDTO) {
		sqlSession.update(namespace + ".resume_default_update", de_resumeDTO);
	}

	@Override
	public int mem_Resume_defaultResume_select(Integer mem_no) {
		return sqlSession.selectOne(namespace + ".member_resumeNo_select", mem_no);
	}

	@Override
	public void mem_Resume_resumeOpen_update(Mem_Resume_resumeOpenDTO resumeOpenDTO) {
		sqlSession.update(namespace + ".resume_resumeOpen_update", resumeOpenDTO);
	}

	@Override
	public void mem_Resume_fileCreate(Mem_Resume_fileDTO fileDTO) {
		sqlSession.insert(namespace + ".resume_file_create", fileDTO);
	}

	@Override
	public List<Mem_Resume_fileVO> mem_Resume_file_List(Mem_Resume_fileVO fileVO) {
		return sqlSession.selectList(namespace + ".resume_file_list", fileVO);
	}

	@Override
	public int mem_Resume_fileParent(int file_no) {
		return sqlSession.selectOne(namespace + ".resume_file_parent", file_no);
	}

	@Override
	public void mem_Resume_fileDelete(Mem_Resume_fileDTO fileDTO) {
		sqlSession.delete(namespace + ".resume_file_delete", fileDTO);
	}

}
