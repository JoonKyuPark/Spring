package com.jobis.etp.pass.domain;

import java.util.HashMap;
import java.util.List;

import org.aspectj.apache.bcel.generic.NEW;
import org.springframework.http.ResponseEntity;

import com.jobis.mem.resume.domain.Mem_ResumeVO;

public class Etp_Pass_Map {
	
	List<Mem_ResumeVO> list=null;
	ResponseEntity<String> entity;
	
	
	public List<Mem_ResumeVO> getList() {
		return list;
	}
	public void setList(List<Mem_ResumeVO> list) {
		this.list = list;
	}
	public ResponseEntity<String> getEntity() {
		return entity;
	}
	public void setEntity(ResponseEntity<String> entity) {
		this.entity = entity;
	}
	
	
}

