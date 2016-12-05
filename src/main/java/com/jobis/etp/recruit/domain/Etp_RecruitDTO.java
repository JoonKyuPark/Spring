package com.jobis.etp.recruit.domain;

import java.io.Serializable;

public class Etp_RecruitDTO implements Serializable {

	private int mem_logno;
	private String log_date;
	private int etp_no;
	private int member_no;

	public Etp_RecruitDTO(){
		
	}



	public Etp_RecruitDTO(int mem_logno, String log_date, int etp_no,
			int member_no) {
		super();
		this.mem_logno = mem_logno;
		this.log_date = log_date;
		this.etp_no = etp_no;
		this.member_no = member_no;
		
	}



	public int getMem_logno() {
		return mem_logno;
	}



	public void setMem_logno(int mem_logno) {
		this.mem_logno = mem_logno;
	}



	public String getLog_date() {
		return log_date;
	}



	public void setLog_date(String log_date) {
		this.log_date = log_date;
	}



	public int getEtp_no() {
		return etp_no;
	}



	public void setEtp_no(int etp_no) {
		this.etp_no = etp_no;
	}



	public int getMember_no() {
		return member_no;
	}



	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}



	

}
