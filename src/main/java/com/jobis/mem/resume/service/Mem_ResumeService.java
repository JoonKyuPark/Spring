package com.jobis.mem.resume.service;

import java.util.List;

import com.jobis.mem.resume.domain.Mem_ResumeVO;
import com.jobis.mem.resume.domain.Mem_Resume_abilityVO;
import com.jobis.mem.resume.domain.Mem_Resume_allDTO;
import com.jobis.mem.resume.domain.Mem_Resume_careerListVO;
import com.jobis.mem.resume.domain.Mem_Resume_careerVO;
import com.jobis.mem.resume.domain.Mem_Resume_listDTO;

public interface Mem_ResumeService {
	public void mem_Resume_create(Mem_ResumeVO resumeVO, Mem_Resume_abilityVO abilityVO, Mem_Resume_careerListVO careerListVO);
	/*public void mem_Resume_remove(Integer num);*/
	public void mem_Resume_modify(Mem_ResumeVO resumeVO);
	public Mem_Resume_allDTO mem_Resume_read(Integer num);
	public List<Mem_Resume_listDTO> mem_Resume_list();

}
