package com.jobis.etp.recruit.domain;

public class Etp_RecruitVO {

	
	private String etp_name;		
	private String member_name;	
	private String member_img;		
	private int mem_logno; 
	private String log_date;	



	public Etp_RecruitVO(){
		
	}



	public Etp_RecruitVO(String etp_name, String member_name, String member_img,
			int mem_logno, String log_date) {
		super();
		this.etp_name = etp_name;
		this.member_name = member_name;
		this.member_img = member_img;
		this.mem_logno = mem_logno;
		this.log_date = log_date;
	}



	public String getEtp_name() {
		return etp_name;
	}



	public void setEtp_name(String etp_name) {
		this.etp_name = etp_name;
	}



	public String getMember_name() {
		return member_name;
	}



	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}



	public String getMember_img() {
		return member_img;
	}



	public void setMember_img(String member_img) {
		this.member_img = member_img;
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



	@Override
	public String toString() {
		return "Etp_RecruitVO [etp_name=" + etp_name + ", member_name=" + member_name + ", member_img=" + member_img
				+ ", mem_logno=" + mem_logno + ", log_date=" + log_date + "]";
	}

	

}
