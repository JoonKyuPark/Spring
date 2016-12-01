package com.jobis.etp.login.domain;

import org.springframework.stereotype.Component;

@Component
public class Etp_loginDTO {
	
	private String etp_id;
	private String etp_pass;
	private String autologin;
	public Etp_loginDTO(String etp_id, String etp_pass, String autologin) {
		super();
		this.etp_id = etp_id;
		this.etp_pass = etp_pass;
		this.autologin = autologin;
	}
	public Etp_loginDTO() {
		super();
	}
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
	public String getAutologin() {
		return autologin;
	}
	public void setAutologin(String autologin) {
		this.autologin = autologin;
	}



	

}
