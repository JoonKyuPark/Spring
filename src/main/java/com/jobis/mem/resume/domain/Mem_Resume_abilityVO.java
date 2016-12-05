package com.jobis.mem.resume.domain;

public class Mem_Resume_abilityVO {
	 private int ac_ability_no;		/*�з»��� ��ȣ*/
	  private String enter_date;		/*���п���*/
	  private String graduation_date;		/*��������*/
	  private String school_name;			/*�б���*/
	  private String major_1; 		/*����1*/
	  private String major_2; 		/*����2*/
	  private String grade;		/*����*/
	  private int resume_no;
	  private int ed_division;
	  
	  public Mem_Resume_abilityVO(){}
	  
	public int getAc_ability_no() {
		return ac_ability_no;
	}

	public void setAc_ability_no(int ac_ability_no) {
		this.ac_ability_no = ac_ability_no;
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

	public String getMajor_2() {
		return major_2;
	}

	public void setMajor_2(String major_2) {
		this.major_2 = major_2;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public int getResume_no() {
		return resume_no;
	}

	public void setResume_no(int resume_no) {
		this.resume_no = resume_no;
	}

	public int getEd_division() {
		return ed_division;
	}

	public void setEd_division(int ed_division) {
		this.ed_division = ed_division;
	}
	
}
