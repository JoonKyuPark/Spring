package com.jobis.mem.resume.domain;

import java.util.List;

public class Mem_Resume_allDTO {
	private Mem_ResumeDTO resumeDTO;
	private List<Mem_Resume_careerDTO> careerDTO;
	private Mem_Resume_abilityDTO ac_abilityDTO;
	public Mem_ResumeDTO getResumeDTO() {
		return resumeDTO;
	}
	public void setResumeDTO(Mem_ResumeDTO resumeDTO) {
		this.resumeDTO = resumeDTO;
	}
	public List<Mem_Resume_careerDTO> getCareerDTO() {
		return careerDTO;
	}
	public void setCareerDTO(List<Mem_Resume_careerDTO> careerDTO) {
		this.careerDTO = careerDTO;
	}
	public Mem_Resume_abilityDTO getAc_abilityDTO() {
		return ac_abilityDTO;
	}
	public void setAc_abilityDTO(Mem_Resume_abilityDTO ac_abilityDTO) {
		this.ac_abilityDTO = ac_abilityDTO;
	}
	
	
	
	

}
