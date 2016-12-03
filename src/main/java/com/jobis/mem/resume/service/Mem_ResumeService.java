package com.jobis.mem.resume.service;


import java.util.List;

import com.jobis.mem.resume.domain.Mem_ResumeDTO;
import com.jobis.mem.resume.domain.Mem_Resume_abilityDTO;
import com.jobis.mem.resume.domain.Mem_Resume_allVO;
import com.jobis.mem.resume.domain.Mem_Resume_careerListDTO;
import com.jobis.mem.resume.domain.Mem_Resume_defaultResumeDTO;
import com.jobis.mem.resume.domain.Mem_Resume_fileDTO;
import com.jobis.mem.resume.domain.Mem_Resume_fileVO;
import com.jobis.mem.resume.domain.Mem_Resume_listVO;
import com.jobis.mem.resume.domain.Mem_Resume_resumeOpenDTO;



public interface Mem_ResumeService {
	public void mem_Resume_create(Mem_ResumeDTO resumeDTO, Mem_Resume_abilityDTO abilityDTO, Mem_Resume_careerListDTO careerListDTO);
	/*public void mem_Resume_remove(Integer num);*/
	public void mem_Resume_modify(Mem_ResumeDTO resumeDTO);
	public Mem_Resume_allVO mem_Resume_read(Integer num);
	public List<Mem_Resume_listVO> mem_Resume_list();

	public void mem_Resume_default_update(Mem_Resume_defaultResumeDTO de_resumeDTO);
	public int mem_Resume_default_select(Integer mem_no);
	
	public void mem_Reusme_resumeOpen_update(Mem_Resume_resumeOpenDTO resumeOpenDTO);
	
	
	
	/*file*/
	public void mem_Resume_file_create(Mem_Resume_fileDTO fileDTO);
	public List<Mem_Resume_fileVO> mem_Resume_file_list(Mem_Resume_fileVO fileVO);
	public int mem_Resume_fileparent_select(int file_no);
	public void mem_Resume_file_delete(Mem_Resume_fileDTO fileDTO);
}
