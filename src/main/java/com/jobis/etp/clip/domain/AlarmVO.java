package com.jobis.etp.clip.domain;

public class AlarmVO {
	
	private int notice_no;
	private String notice_type;
	private String notice_name;
	private String notice_date;
	private String notice_time;
	private String notice_check;
	private int member_no;
	private int mem_submit_no;
	private int exam_question_no;
	private int smart_match_no;
	
	public AlarmVO(){}

	public int getNotice_no() {
		return notice_no;
	}

	public void setNotice_no(int notice_no) {
		this.notice_no = notice_no;
	}

	public String getNotice_type() {
		return notice_type;
	}

	public void setNotice_type(String notice_type) {
		this.notice_type = notice_type;
	}

	public String getNotice_name() {
		return notice_name;
	}

	public void setNotice_name(String notice_name) {
		this.notice_name = notice_name;
	}

	public String getNotice_date() {
		return notice_date;
	}

	public void setNotice_date(String notice_date) {
		this.notice_date = notice_date;
	}

	public String getNotice_time() {
		return notice_time;
	}

	public void setNotice_time(String notice_time) {
		this.notice_time = notice_time;
	}

	public String getNotice_check() {
		return notice_check;
	}

	public void setNotice_check(String notice_check) {
		this.notice_check = notice_check;
	}

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public int getMem_submit_no() {
		return mem_submit_no;
	}

	public void setMem_submit_no(int mem_submit_no) {
		this.mem_submit_no = mem_submit_no;
	}

	public int getExam_question_no() {
		return exam_question_no;
	}

	public void setExam_question_no(int exam_question_no) {
		this.exam_question_no = exam_question_no;
	}

	public int getSmart_match_no() {
		return smart_match_no;
	}

	public void setSmart_match_no(int smart_match_no) {
		this.smart_match_no = smart_match_no;
	}

	public AlarmVO(int notice_no, String notice_type, String notice_name, String notice_date, String notice_time,
			String notice_check, int member_no, int mem_submit_no, int exam_question_no, int smart_match_no) {
		super();
		this.notice_no = notice_no;
		this.notice_type = notice_type;
		this.notice_name = notice_name;
		this.notice_date = notice_date;
		this.notice_time = notice_time;
		this.notice_check = notice_check;
		this.member_no = member_no;
		this.mem_submit_no = mem_submit_no;
		this.exam_question_no = exam_question_no;
		this.smart_match_no = smart_match_no;
	}

	@Override
	public String toString() {
		return "AlarmDTO [notice_no=" + notice_no + ", notice_type=" + notice_type + ", notice_name=" + notice_name
				+ ", notice_date=" + notice_date + ", notice_time=" + notice_time + ", notice_check=" + notice_check
				+ ", member_no=" + member_no + ", mem_submit_no=" + mem_submit_no + ", exam_question_no="
				+ exam_question_no + ", smart_match_no=" + smart_match_no + "]";
	}
	
	
}
