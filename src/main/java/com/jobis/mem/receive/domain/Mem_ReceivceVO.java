package com.jobis.mem.receive.domain;

import java.io.Serializable;

public class Mem_ReceivceVO implements Serializable{
	int join_receive_no ;
	int recruit_no ;
	String receive_date ;
	String reading ;
	String first_interview ;
	int resume_no  ;
	
	public Mem_ReceivceVO(){
		
	}
	
	public Mem_ReceivceVO(int join_receive_no, int recruit_no, String receive_date, String reading,
			String first_interview, int resume_no ) {
	
		this.join_receive_no = join_receive_no;
		this.recruit_no = recruit_no;
		this.receive_date = receive_date;
		this.reading = reading;
		this.first_interview = first_interview;
		this.resume_no  = resume_no ;
	}
	public int getJoin_receive_no() {
		return join_receive_no;
	}
	public void setJoin_receive_no(int join_receive_no) {
		this.join_receive_no = join_receive_no;
	}
	public int getRecruit_no() {
		return recruit_no;
	}
	public void setRecruit_no(int recruit_no) {
		this.recruit_no = recruit_no;
	}
	public String getReceive_date() {
		return receive_date;
	}
	public void setReceive_date(String receive_date) {
		this.receive_date = receive_date;
	}
	public String getReading() {
		return reading;
	}
	public void setReading(String reading) {
		this.reading = reading;
	}
	public String getFirst_interview() {
		return first_interview;
	}
	public void setFirst_interview(String first_interview) {
		this.first_interview = first_interview;
	}

	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}
	
	

	
}

