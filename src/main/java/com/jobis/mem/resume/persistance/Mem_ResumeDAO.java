package com.jobis.mem.resume.persistance;

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





public interface Mem_ResumeDAO {
	
public void mem_Resume_create(Mem_ResumeDTO resumeDTO, Mem_Resume_abilityDTO abilityDTO, Mem_Resume_careerListDTO careerListDTO);
/*public void mem_Resume_delete(Integer num);*/
public void mem_Resume_update(Mem_ResumeDTO resumeDTO);
public Mem_Resume_allVO mem_Resume_select(Integer num);
public List<Mem_Resume_listVO> mem_Resume_list();

public void mem_Resume_defaultResume_update(Mem_Resume_defaultResumeDTO de_resumeDTO);
public int mem_Resume_defaultResume_select(Integer mem_no);
public void mem_Resume_resumeOpen_update(Mem_Resume_resumeOpenDTO resumeOpenVO);


/*file*/
public void mem_Resume_fileCreate(Mem_Resume_fileDTO fileDTO);
public List<Mem_Resume_fileVO> mem_Resume_file_List(Mem_Resume_fileVO fileVO);
public int mem_Resume_fileParent(int file_no);
public void mem_Resume_fileDelete(Mem_Resume_fileDTO fileDTO);
}
