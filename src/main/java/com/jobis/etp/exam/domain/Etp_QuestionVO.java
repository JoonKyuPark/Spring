package com.jobis.etp.exam.domain;

public class Etp_QuestionVO {
	private int question_no;//
	private int question_second;//
	private int exam_no;//
	private int etp_no;//
	private int exam_question_no;//
	
	private String question_content;//
	private String question_name;//
	private String question_answer;//
	public Etp_QuestionVO(){}

	public Etp_QuestionVO(int question_no, int question_second, int exam_no, int etp_no, int exam_question_no,
			String question_content, String question_name, String question_answer) {
		super();
		this.question_no = question_no;
		this.question_second = question_second;
		this.exam_no = exam_no;
		this.etp_no = etp_no;
		this.exam_question_no = exam_question_no;
		this.question_content = question_content;
		this.question_name = question_name;
		this.question_answer = question_answer;
	}

	public int getQuestion_no() {
		return question_no;
	}

	public void setQuestion_no(int question_no) {
		this.question_no = question_no;
	}

	public int getQuestion_second() {
		return question_second;
	}

	public void setQuestion_second(int question_second) {
		this.question_second = question_second;
	}

	public int getExam_no() {
		return exam_no;
	}

	public void setExam_no(int exam_no) {
		this.exam_no = exam_no;
	}

	public int getEtp_no() {
		return etp_no;
	}

	public void setEtp_no(int etp_no) {
		this.etp_no = etp_no;
	}

	public int getExam_question_no() {
		return exam_question_no;
	}

	public void setExam_question_no(int exam_question_no) {
		this.exam_question_no = exam_question_no;
	}

	public String getquestion_content() {
		return question_content;
	}

	public void setquestion_content(String question_content) {
		this.question_content = question_content;
	}

	public String getQuestion_name() {
		return question_name;
	}

	public void setQuestion_name(String question_name) {
		this.question_name = question_name;
	}

	public String getQuestion_answer() {
		return question_answer;
	}

	public void setQuestion_answer(String question_answer) {
		this.question_answer = question_answer;
	}
	
	
	
}
