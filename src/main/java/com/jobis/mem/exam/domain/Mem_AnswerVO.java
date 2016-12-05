package com.jobis.mem.exam.domain;

public class Mem_AnswerVO {
	private int ans_no;
	private String question_answer;
	private int question_no;
	private int member_no;
	private String correct_answer;
	
	public Mem_AnswerVO(){}

	public Mem_AnswerVO(int ans_no, String question_answer, int question_no, int member_no, String correct_answer) {
		super();
		this.ans_no = ans_no;
		this.question_answer = question_answer;
		this.question_no = question_no;
		this.member_no = member_no;
		this.correct_answer = correct_answer;
	}

	public int getAns_no() {
		return ans_no;
	}

	public void setAns_no(int ans_no) {
		this.ans_no = ans_no;
	}

	public String getQuestion_answer() {
		return question_answer;
	}

	public void setQuestion_answer(String question_answer) {
		this.question_answer = question_answer;
	}

	public int getQuestion_no() {
		return question_no;
	}

	public void setQuestion_no(int question_no) {
		this.question_no = question_no;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getCorrect_answer() {
		return correct_answer;
	}

	public void setCorrect_answer(String correct_answer) {
		this.correct_answer = correct_answer;
	}
	
	
}
