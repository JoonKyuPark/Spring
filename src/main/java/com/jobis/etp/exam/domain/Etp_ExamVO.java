package com.jobis.etp.exam.domain;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class Etp_ExamVO {
	private Integer exam_no;
	private Date exam_sdate;
	private Date exam_ddate;
	private int exam_number;
	private int etp_no;
	
	private String exam_show;
	private String exam_name;
	private String exam_field;
	private String exam_member;
	
	public Etp_ExamVO(){}

	public Etp_ExamVO(Integer exam_no, Date exam_sdate, Date exam_ddate, int exam_number, int etp_no, String exam_show, String exam_name,
			String exam_field, String exam_member) {
		this.exam_no = exam_no;
		this.exam_sdate = exam_sdate;
		this.exam_ddate = exam_ddate;
		this.exam_number = exam_number;
		this.etp_no = etp_no;
		this.exam_show = exam_show;
		this.exam_name = exam_name;
		this.exam_field = exam_field;
		this.exam_member = exam_member;
	}

	public String getExam_show() {
		return exam_show;
	}

	public void setExam_show(String exam_show) {
		this.exam_show = exam_show;
	}

	public Integer getExam_no() {
		return exam_no;
	}

	public void setExam_no(Integer exam_no) {
		this.exam_no = exam_no;
	}

	public Date getExam_sdate() {
		return exam_sdate;
	}

	public void setExam_sdate(Date exam_sdate) {
		this.exam_sdate = exam_sdate;
	}

	public Date getExam_ddate() {
		return exam_ddate;
	}

	public void setExam_ddate(Date exam_ddate) {
		this.exam_ddate = exam_ddate;
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

	public String getExam_name() {
		return exam_name;
	}

	public void setExam_name(String exam_name) {
		this.exam_name = exam_name;
	}

	public String getExam_field() {
		return exam_field;
	}

	public void setExam_field(String exam_field) {
		this.exam_field = exam_field;
	}

	public String getExam_member() {
		return exam_member;
	}

	public void setExam_member(String exam_member) {
		this.exam_member = exam_member;
	}

}
