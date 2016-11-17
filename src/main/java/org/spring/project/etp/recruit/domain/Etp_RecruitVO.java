package org.spring.project.etp.recruit.domain;

public class Etp_RecruitVO {
	
	private int recruit_no;  
	private String recruit_title;
	private String[] hire_type;
	private String recruit_number;
	private String income_qualification;
	private int max_pay;
	private int min_pay;
	private String[] career_check;
	private int career_period;
	private String ac_ability_no;
	private String receive_sdate;
	private String receive_ddate;
	private String[] receive_way;
	private String ads;
	private String recruit_field;
	private String[] recruit_position;
	private String recruit_day;
	private String[] recruit_addr;
	private int etp_no;
	
	
	public int getRecruit_no() {
		return recruit_no;
	}
	public void setRecruit_no(int recruit_no) {
		this.recruit_no = recruit_no;
	}
	public String getRecruit_title() {
		return recruit_title;
	}
	public void setRecruit_title(String recruit_title) {
		this.recruit_title = recruit_title;
	}
	public String[] getHire_type() {
		return hire_type;
	}
	public void setHire_type(String[] hire_type) {
		this.hire_type = hire_type;
	}
	public String getRecruit_number() {
		return recruit_number;
	}
	public void setRecruit_number(String recruit_number) {
		this.recruit_number = recruit_number;
	}
	public String getIncome_qualification() {
		return income_qualification;
	}
	public void setIncome_qualification(String income_qualification) {
		this.income_qualification = income_qualification;
	}
	public int getMax_pay() {
		return max_pay;
	}
	public void setMax_pay(int max_pay) {
		this.max_pay = max_pay;
	}
	public int getMin_pay() {
		return min_pay;
	}
	public void setMin_pay(int min_pay) {
		this.min_pay = min_pay;
	}
	public String[] getCareer_check() {
		return career_check;
	}
	public void setCareer_check(String[] career_check) {
		this.career_check = career_check;
	}
	public int getCareer_period() {
		return career_period;
	}
	public void setCareer_period(int career_period) {
		this.career_period = career_period;
	}
	public String getAc_ability_no() {
		return ac_ability_no;
	}
	public void setAc_ability_no(String ac_ability_no) {
		this.ac_ability_no = ac_ability_no;
	}
	public String getReceive_sdate() {
		return receive_sdate;
	}
	public void setReceive_sdate(String receive_sdate) {
		this.receive_sdate = receive_sdate;
	}
	public String getReceive_ddate() {
		return receive_ddate;
	}
	public void setReceive_ddate(String receive_ddate) {
		this.receive_ddate = receive_ddate;
	}
	public String[] getReceive_way() {
		return receive_way;
	}
	public void setReceive_way(String[] receive_way) {
		this.receive_way = receive_way;
	}
	public String getAds() {
		return ads;
	}
	public void setAds(String ads) {
		this.ads = ads;
	}
	public String getRecruit_field() {
		return recruit_field;
	}
	public void setRecruit_field(String recruit_field) {
		this.recruit_field = recruit_field;
	}
	public String[] getRecruit_position() {
		return recruit_position;
	}
	public void setRecruit_position(String[] recruit_position) {
		this.recruit_position = recruit_position;
	}
	public String getRecruit_day() {
		return recruit_day;
	}
	public void setRecruit_day(String recruit_day) {
		this.recruit_day = recruit_day;
	}
	public String[] getRecruit_addr() {
		return recruit_addr;
	}
	public void setRecruit_addr(String[] recruit_addr) {
		this.recruit_addr = recruit_addr;
	}
	public int getEtp_no() {
		return etp_no;
	}
	public void setEtp_no(int etp_no) {
		this.etp_no = etp_no;
	}
	
	public Etp_RecruitVO(int recruit_no, String recruit_title, String[] hire_type, String recruit_number,
			String income_qualification, int max_pay, int min_pay, String[] career_check, int career_period,
			String ac_ability_no, String receive_sdate, String receive_ddate, String[] receive_way, String ads,
			String recruit_field, String[] recruit_position, String recruit_day, String[] recruit_addr, int etp_no) {
		super();
		this.recruit_no = recruit_no;
		this.recruit_title = recruit_title;
		this.hire_type = hire_type;
		this.recruit_number = recruit_number;
		this.income_qualification = income_qualification;
		this.max_pay = max_pay;
		this.min_pay = min_pay;
		this.career_check = career_check;
		this.career_period = career_period;
		this.ac_ability_no = ac_ability_no;
		this.receive_sdate = receive_sdate;
		this.receive_ddate = receive_ddate;
		this.receive_way = receive_way;
		this.ads = ads;
		this.recruit_field = recruit_field;
		this.recruit_position = recruit_position;
		this.recruit_day = recruit_day;
		this.recruit_addr = recruit_addr;
		this.etp_no = etp_no;
	}
	
	
}
