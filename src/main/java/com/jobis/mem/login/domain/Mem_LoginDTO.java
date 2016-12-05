package com.jobis.mem.login.domain;

public class Mem_LoginDTO {
	private String member_id, member_pwd;
	private String autologin;
	public Mem_LoginDTO(String member_id, String member_pwd, String autologin) {
		super();
		this.member_id = member_id;
		this.member_pwd = member_pwd;
		this.autologin = autologin;
	}
	public Mem_LoginDTO() {
		super();
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
		this.member_pwd = member_pwd;
	}
	public String getAutologin() {
		return autologin;
	}
	public void setAutologin(String autologin) {
		this.autologin = autologin;
	}
	
	
}
