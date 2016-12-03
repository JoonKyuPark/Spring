package com.jobis.mem.resume.domain;

import java.util.List;

public class Mem_Resume_allVO {
	private Mem_ResumeVO resumeVO;
	private List<Mem_Resume_careerVO> careerVO;
	private Mem_Resume_abilityVO ac_abilityVO;
	public Mem_ResumeVO getResumeVO() {
		return resumeVO;
	}
	public void setResumeVO(Mem_ResumeVO resumeVO) {
		this.resumeVO = resumeVO;
	}
	public List<Mem_Resume_careerVO> getCareerVO() {
		return careerVO;
	}
	public void setCareerVO(List<Mem_Resume_careerVO> careerVO) {
		this.careerVO = careerVO;
	}
	public Mem_Resume_abilityVO getAc_abilityVO() {
		return ac_abilityVO;
	}
	public void setAc_abilityVO(Mem_Resume_abilityVO ac_abilityVO) {
		this.ac_abilityVO = ac_abilityVO;
	}
	
	
	
	
}
