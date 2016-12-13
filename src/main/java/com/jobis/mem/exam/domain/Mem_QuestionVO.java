package com.jobis.mem.exam.domain;

public class Mem_QuestionVO {
	private int exam_no;
	private int exam_question_no;
	
	public Mem_QuestionVO(){}

	public Mem_QuestionVO(int exam_no, int exam_question_no) {
		super();
		this.exam_no = exam_no;
		this.exam_question_no = exam_question_no;
	}

	public int getExam_no() {
		return exam_no;
	}

	public void setExam_no(int exam_no) {
		this.exam_no = exam_no;
	}

	public int getExam_question_no() {
		return exam_question_no;
	}

	public void setExam_question_no(int exam_question_no) {
		this.exam_question_no = exam_question_no;
	}

}
