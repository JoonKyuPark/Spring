package com.jobis.etp.exam.domain;

public class Etp_ExamShowVO {
	private int exam_no;
	private String exam_show;
	
	public Etp_ExamShowVO(int exam_no, String exam_show) {
		super();
		this.exam_no = exam_no;
		this.exam_show = exam_show;
	}
	
	public Etp_ExamShowVO(){}

	public int getExam_no() {
		return exam_no;
	}

	public void setExam_no(int exam_no) {
		this.exam_no = exam_no;
	}

	public String getExam_show() {
		return exam_show;
	}

	public void setExam_show(String exam_show) {
		this.exam_show = exam_show;
	}
	
	
}
