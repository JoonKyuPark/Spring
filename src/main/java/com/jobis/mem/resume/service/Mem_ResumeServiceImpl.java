package com.jobis.mem.resume.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.mem.resume.domain.Mem_ResumeDTO;
import com.jobis.mem.resume.domain.Mem_Resume_abilityDTO;
import com.jobis.mem.resume.domain.Mem_Resume_allVO;
import com.jobis.mem.resume.domain.Mem_Resume_careerListDTO;
import com.jobis.mem.resume.domain.Mem_Resume_defaultResumeDTO;
import com.jobis.mem.resume.domain.Mem_Resume_fileDTO;
import com.jobis.mem.resume.domain.Mem_Resume_fileVO;
import com.jobis.mem.resume.domain.Mem_Resume_listVO;
import com.jobis.mem.resume.domain.Mem_Resume_resumeOpenDTO;
import com.jobis.mem.resume.persistance.Mem_ResumeDAO;


@Service
public class Mem_ResumeServiceImpl implements Mem_ResumeService {
@Inject
Mem_ResumeDAO resume_DAO;
	
	@Override
	public void mem_Resume_create(Mem_ResumeDTO resumeDTO, Mem_Resume_abilityDTO abilityDTO, Mem_Resume_careerListDTO careerListDTO) {
		resume_DAO.mem_Resume_create(resumeDTO, abilityDTO, careerListDTO);
	}

	@Override
	public void mem_Resume_modify(Mem_ResumeDTO resumeDTO) {
		resume_DAO.mem_Resume_update(resumeDTO);
	}

	@Override
	public Mem_Resume_allVO mem_Resume_read(Integer num) {
		return resume_DAO.mem_Resume_select(num);
	}

	@Override
	public List<Mem_Resume_listVO> mem_Resume_list() {
		return resume_DAO.mem_Resume_list();
	}

	@Override
	public void mem_Resume_default_update(Mem_Resume_defaultResumeDTO de_resumeDTO) {
		resume_DAO.mem_Resume_defaultResume_update(de_resumeDTO);
	}

	@Override
	public int mem_Resume_default_select(Integer mem_no) {
		return resume_DAO.mem_Resume_defaultResume_select(mem_no);
	}

	@Override
	public void mem_Reusme_resumeOpen_update(Mem_Resume_resumeOpenDTO resumeOpenDTO) {
		resume_DAO.mem_Resume_resumeOpen_update(resumeOpenDTO);
	}

	@Override
	public void mem_Resume_file_create(Mem_Resume_fileDTO fileDTO) {
		resume_DAO.mem_Resume_fileCreate(fileDTO);
	}

	@Override
	public List<Mem_Resume_fileVO> mem_Resume_file_list(Mem_Resume_fileVO fileVO) {
		return resume_DAO.mem_Resume_file_List(fileVO);
	}

	@Override
	public int mem_Resume_fileparent_select(int file_no) {
		return resume_DAO.mem_Resume_fileParent(file_no);
	}

	@Override
	public void mem_Resume_file_delete(Mem_Resume_fileDTO fileDTO) {
		resume_DAO.mem_Resume_fileDelete(fileDTO);
	}
	
	
}
