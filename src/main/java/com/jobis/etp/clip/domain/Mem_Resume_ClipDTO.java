package com.jobis.etp.clip.domain;

public class Mem_Resume_ClipDTO {
	private String responibility_field,work_month,work_rank,career_field,career_etp_name,retire_date,join_date,important_ability,RESUME_IMG,self_intro_cont,volun_field,resume_title,enter_date,graduation_date,school_name,major_1,grade;  
	private int member_no,hope_income,resume_no;
	
	public Mem_Resume_ClipDTO(){}
	public Mem_Resume_ClipDTO(String responibility_field, String work_month, String work_rank, String career_field,
			String career_etp_name, String retire_date, String join_date, String important_ability, String rESUME_IMG,
			String self_intro_cont, String volun_field, String resume_title, String enter_date, String graduation_date,
			String school_name, String major_1, String grade, int member_no, int hope_income, int resume_no) {
		super();
		this.responibility_field = responibility_field;
		this.work_month = work_month;
		this.work_rank = work_rank;
		this.career_field = career_field;
		this.career_etp_name = career_etp_name;
		this.retire_date = retire_date;
		this.join_date = join_date;
		this.important_ability = important_ability;
		RESUME_IMG = rESUME_IMG;
		this.self_intro_cont = self_intro_cont;
		this.volun_field = volun_field;
		this.resume_title = resume_title;
		this.enter_date = enter_date;
		this.graduation_date = graduation_date;
		this.school_name = school_name;
		this.major_1 = major_1;
		this.grade = grade;
		this.member_no = member_no;
		this.hope_income = hope_income;
		this.resume_no = resume_no;
	}
	public String getResponibility_field() {
		return responibility_field;
	}
	public void setResponibility_field(String responibility_field) {
		this.responibility_field = responibility_field;
	}
	public String getWork_month() {
		return work_month;
	}
	public void setWork_month(String work_month) {
		this.work_month = work_month;
	}
	public String getWork_rank() {
		return work_rank;
	}
	public void setWork_rank(String work_rank) {
		this.work_rank = work_rank;
	}
	public String getCareer_field() {
		return career_field;
	}
	public void setCareer_field(String career_field) {
		this.career_field = career_field;
	}
	public String getCareer_etp_name() {
		return career_etp_name;
	}
	public void setCareer_etp_name(String career_etp_name) {
		this.career_etp_name = career_etp_name;
	}
	public String getRetire_date() {
		return retire_date;
	}
	public void setRetire_date(String retire_date) {
		this.retire_date = retire_date;
	}
	public String getJoin_date() {
		return join_date;
	}
	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}
	public String getImportant_ability() {
		return important_ability;
	}
	public void setImportant_ability(String important_ability) {
		this.important_ability = important_ability;
	}
	public String getRESUME_IMG() {
		return RESUME_IMG;
	}
	public void setRESUME_IMG(String rESUME_IMG) {
		RESUME_IMG = rESUME_IMG;
	}
	public String getSelf_intro_cont() {
		return self_intro_cont;
	}
	public void setSelf_intro_cont(String self_intro_cont) {
		this.self_intro_cont = self_intro_cont;
	}
	public String getVolun_field() {
		return volun_field;
	}
	public void setVolun_field(String volun_field) {
		this.volun_field = volun_field;
	}
	public String getResume_title() {
		return resume_title;
	}
	public void setResume_title(String resume_title) {
		this.resume_title = resume_title;
	}
	public String getEnter_date() {
		return enter_date;
	}
	public void setEnter_date(String enter_date) {
		this.enter_date = enter_date;
	}
	public String getGraduation_date() {
		return graduation_date;
	}
	public void setGraduation_date(String graduation_date) {
		this.graduation_date = graduation_date;
	}
	public String getSchool_name() {
		return school_name;
	}
	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}
	public String getMajor_1() {
		return major_1;
	}
	public void setMajor_1(String major_1) {
		this.major_1 = major_1;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getHope_income() {
		return hope_income;
	}
	public void setHope_income(int hope_income) {
		this.hope_income = hope_income;
	}
	public int getResume_no() {
		return resume_no;
	}
	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}
	
	@Override
	public String toString() {
		return "TestDTO [responibility_field=" + responibility_field + ", work_month=" + work_month + ", work_rank="
				+ work_rank + ", career_field=" + career_field + ", career_etp_name=" + career_etp_name
				+ ", retire_date=" + retire_date + ", join_date=" + join_date + ", important_ability="
				+ important_ability + ", RESUME_IMG=" + RESUME_IMG + ", self_intro_cont=" + self_intro_cont
				+ ", volun_field=" + volun_field + ", resume_title=" + resume_title + ", enter_date=" + enter_date
				+ ", graduation_date=" + graduation_date + ", school_name=" + school_name + ", major_1=" + major_1
				+ ", grade=" + grade + ", member_no=" + member_no + ", hope_income=" + hope_income + ", resume_no="
				+ resume_no + "]";
	}
}