package com.jobis.mem.clip.domain;

import java.io.Serializable;

public class Mem_ClipVO implements Serializable {

	int recruit_clip_no;
	String recruit_clip_date;
	int recruit_no;
	int member_no;

	public Mem_ClipVO(){
			
		}

	public Mem_ClipVO(int recruit_clip_no, String recruit_clip_date, int recruit_no, int member_no) {
			super();
			this.recruit_clip_no = recruit_clip_no;
			this.recruit_clip_date = recruit_clip_date;
			this.recruit_no = recruit_no;
			this.member_no = member_no;
		}

	public int getRecruit_clip_no() {
		return recruit_clip_no;
	}

	public void setRecruit_clip_no(int recruit_clip_no) {
		this.recruit_clip_no = recruit_clip_no;
	}

	public String getRecruit_clip_date() {
		return recruit_clip_date;
	}

	public void setRecruit_clip_date(String recruit_clip_date) {
		this.recruit_clip_date = recruit_clip_date;
	}

	public int getRecruit_no() {
		return recruit_no;
	}

	public void setRecruit_no(int recruit_no) {
		this.recruit_no = recruit_no;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

}
