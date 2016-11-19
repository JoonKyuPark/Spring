package com.jobis.etp.clip.domain;

public class Etp_Mem_ClipVO {

	private int mem_clip_no;
	private int etp_no;
	private int member_no; 
	private String mem_clip_title;
	private String eval_memo;
	private String mem_clip_date;
	
	public Etp_Mem_ClipVO(){ }

	public int getMem_clip_no() {
		return mem_clip_no;
	}

	public void setMem_clip_no(int mem_clip_no) {
		this.mem_clip_no = mem_clip_no;
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

	public String getMem_clip_title() {
		return mem_clip_title;
	}

	public void setMem_clip_title(String mem_clip_title) {
		this.mem_clip_title = mem_clip_title;
	}

	public String getEval_memo() {
		return eval_memo;
	}

	public void setEval_memo(String eval_memo) {
		this.eval_memo = eval_memo;
	}

	public String getMem_clip_date() {
		return mem_clip_date;
	}

	public void setMem_clip_date(String mem_clip_date) {
		this.mem_clip_date = mem_clip_date;
	}

	public Etp_Mem_ClipVO(int mem_clip_no, int etp_no, int member_no, String mem_clip_title, String eval_memo,
			String mem_clip_date) {
		this.mem_clip_no = mem_clip_no;
		this.etp_no = etp_no;
		this.member_no = member_no;
		this.mem_clip_title = mem_clip_title;
		this.eval_memo = eval_memo;
		this.mem_clip_date = mem_clip_date;
	}
	
}
