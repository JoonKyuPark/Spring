package com.jobis.mem.resume.domain;

import org.springframework.web.multipart.MultipartFile;

public class Mem_Resume_uploadAjaxDTO {
	private MultipartFile formData;
	private String parent_no;
	public MultipartFile getFile() {
		return formData;
	}
	public void setFile(MultipartFile file) {
		this.formData = file;
	}
	public String getParent_no() {
		return parent_no;
	}
	public void setParent_no(String parent_no) {
		this.parent_no = parent_no;
	}
	
	
	
}
