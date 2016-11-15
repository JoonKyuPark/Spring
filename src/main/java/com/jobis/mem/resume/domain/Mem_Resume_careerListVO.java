package com.jobis.mem.resume.domain;

import java.util.List;

public class Mem_Resume_careerListVO {
	private List<Mem_Resume_careerVO> resumeListVO;

	public List<Mem_Resume_careerVO> getResumeListVO() {
		return resumeListVO;
	}

	public void setResumeListVO(List<Mem_Resume_careerVO> resumeListVO) {
		this.resumeListVO = resumeListVO;
	}

	@Override
	public String toString() {
		return "Mem_Resume_careerListVO [resumeListVO=" + resumeListVO + "]";
	}
	
	
	
	
}
