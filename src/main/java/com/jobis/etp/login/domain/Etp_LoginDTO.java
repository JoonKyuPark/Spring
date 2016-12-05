package com.jobis.etp.login.domain;

public class Etp_LoginDTO {
	
	private String etp_id;
	private String etp_pass;
	private boolean useCookie;
	
	
	public String getEtp_id() {
		return etp_id;
	}
	public void setEtp_id(String etp_id) {
		this.etp_id = etp_id;
	}
	public String getEtp_pass() {
		return etp_pass;
	}
	public void setEtp_pass(String etp_pass) {
		this.etp_pass = etp_pass;
	}
	
	public boolean isUseCookie() {
		return useCookie;
	}
	public void setUseCookie(boolean useCookie) {
		this.useCookie = useCookie;
	}
	
	
	
	
	
}
