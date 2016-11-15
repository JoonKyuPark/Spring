package com.jobis.mem.resume.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.mem.resume.domain.Mem_ResumeVO;
import com.jobis.mem.resume.domain.Mem_Resume_abilityVO;
import com.jobis.mem.resume.domain.Mem_Resume_allDTO;
import com.jobis.mem.resume.domain.Mem_Resume_careerListVO;
import com.jobis.mem.resume.domain.Mem_Resume_careerVO;
import com.jobis.mem.resume.domain.Mem_Resume_listDTO;
import com.jobis.mem.resume.persistance.Mem_ResumeDAO;

@Service
public class Mem_ResumeServiceImpl implements Mem_ResumeService {
@Inject
Mem_ResumeDAO resume_DAO;
	
	@Override
	public void mem_Resume_create(Mem_ResumeVO resumeVO, Mem_Resume_abilityVO abilityVO, Mem_Resume_careerListVO careerListVO) {
		resume_DAO.mem_Resume_create(resumeVO, abilityVO, careerListVO);
	}

	@Override
	public void mem_Resume_modify(Mem_ResumeVO resumeVO) {
		resume_DAO.mem_Resume_update(resumeVO);
	}

	@Override
	public Mem_Resume_allDTO mem_Resume_read(Integer num) {
		return resume_DAO.mem_Resume_select(num);
	}

	@Override
	public List<Mem_Resume_listDTO> mem_Resume_list() {
		return resume_DAO.mem_Resume_list();
	}

}
