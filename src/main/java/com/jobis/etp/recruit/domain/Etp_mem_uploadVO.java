package com.jobis.etp.recruit.domain;

public class Etp_mem_uploadVO {
	
	private int file_no;
	private String file_step;
	private String file_name;
	private String file_extension;
	private String file_route;
	
	public Etp_mem_uploadVO(){
		
	}

	public int getFile_no() {
		return file_no;
	}

	public void setFile_no(int file_no) {
		this.file_no = file_no;
	}

	public String getFile_step() {
		return file_step;
	}

	public void setFile_step(String file_step) {
		this.file_step = file_step;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public String getFile_extension() {
		return file_extension;
	}

	public void setFile_extension(String file_extension) {
		this.file_extension = file_extension;
	}

	public String getFile_route() {
		return file_route;
	}

	public void setFile_route(String file_route) {
		this.file_route = file_route;
	}
	
	
	

}