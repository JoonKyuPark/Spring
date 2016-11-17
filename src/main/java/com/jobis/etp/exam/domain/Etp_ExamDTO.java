package com.jobis.etp.exam.domain;

import java.util.List;

public class Etp_ExamDTO {
	private List<Integer> exam_no;

	public Etp_ExamDTO(){}
	
	public List<Integer> getExam_no() {
		return exam_no;
	}

	public void setExam_no(List<Integer> exam_no) {
		this.exam_no = exam_no;
	}
}
