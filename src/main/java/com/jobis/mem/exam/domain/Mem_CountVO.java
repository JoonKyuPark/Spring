package com.jobis.mem.exam.domain;

public class Mem_CountVO {
	private int exam_no;
	private int member_no;
	private int count_no;
	
	public Mem_CountVO(){}

	public Mem_CountVO(int exam_no, int member_no, int count_no) {
		super();
		this.exam_no = exam_no;
		this.member_no = member_no;
		this.count_no = count_no;
	}

	public int getExam_no() {
		return exam_no;
	}

	public void setExam_no(int exam_no) {
		this.exam_no = exam_no;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public int getCount_no() {
		return count_no;
	}

	public void setCount_no(int count_no) {
		this.count_no = count_no;
	}
	
	
}
