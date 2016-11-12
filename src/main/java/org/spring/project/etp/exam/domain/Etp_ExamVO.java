package org.spring.project.etp.exam.domain;

public class Etp_ExamVO {
	private int exam_no;
	private int s_date;
	private int d_date;
	private int exam_number;
	private int etp_no;
	
	private String name;
	private String field;
	
	public Etp_ExamVO(){}

	public Etp_ExamVO(int exam_no, int s_date, int d_date, int exam_number, int etp_no, String name, String field) {
		super();
		this.exam_no = exam_no;
		this.s_date = s_date;
		this.d_date = d_date;
		this.exam_number = exam_number;
		this.etp_no = etp_no;
		this.name = name;
		this.field = field;
	}

	public int getExam_no() {
		return exam_no;
	}

	public void setExam_no(int exam_no) {
		this.exam_no = exam_no;
	}

	public int getS_date() {
		return s_date;
	}

	public void setS_date(int s_date) {
		this.s_date = s_date;
	}

	public int getD_date() {
		return d_date;
	}

	public void setD_date(int d_date) {
		this.d_date = d_date;
	}

	public int getExam_number() {
		return exam_number;
	}

	public void setExam_number(int exam_number) {
		this.exam_number = exam_number;
	}

	public int getEtp_no() {
		return etp_no;
	}

	public void setEtp_no(int etp_no) {
		this.etp_no = etp_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}
	
	
}
