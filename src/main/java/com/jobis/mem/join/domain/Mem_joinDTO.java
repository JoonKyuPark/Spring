package com.jobis.mem.join.domain;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Mem_joinDTO {

	private int member_no = 0;
	private String member_name, member_email, member_telephone, member_id, member_pwd;
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_telephone() {
		return member_telephone;
	}
	public void setMember_telephone(String member_telephone) {
		this.member_telephone = member_telephone;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pwd() {
		
		return member_pwd;
	}
	public void setMember_pwd(String member_pwd) {
	

		this.member_pwd =member_pwd;
	}
	
	public void pass(){ //암호화
		System.out.println("22222");
		String pass= this.member_pwd;
		System.out.println("입력비밀번호"+pass);
		String c = "";
		int key=(int)Math.random()*10+1;
		for (int i = 0; i < pass.length(); i++) {
			pass.substring(i);
			System.out.println((int) pass.substring(i, i + 1).charAt(0));
			c += (int) pass.substring(i, i + 1).charAt(0) + key + ",";
		}
		c+=key;
		System.out.println(c);
		this.member_pwd= c;
	}
	
	
	

}
