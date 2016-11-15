package com.jobis.mem.resume.domain;

public class Mem_ResumeDTO {
	private int resume_no;

	
	public Mem_ResumeDTO(){
		
	}
	
	public Mem_ResumeDTO(int resume_no) {
		super();
		this.resume_no = resume_no;
	}

	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}

}
