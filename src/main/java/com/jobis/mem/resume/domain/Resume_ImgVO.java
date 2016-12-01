package com.jobis.mem.resume.domain;

public class Resume_ImgVO {
	private int resume_no;
	private String resume_img;
	
	public Resume_ImgVO(){}

	public Resume_ImgVO(int resume_no, String resume_img) {
		super();
		this.resume_no = resume_no;
		this.resume_img = resume_img;
	}

	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}

	public String getResume_img() {
		return resume_img;
	}

	public void setResume_img(String resume_img) {
		this.resume_img = resume_img;
	}
}
