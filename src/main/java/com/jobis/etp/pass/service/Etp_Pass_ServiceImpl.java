package com.jobis.etp.pass.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.jobis.etp.pass.persistance.Etp_Pass_DAO;
import com.jobis.mem.clip.domain.Mem_ClipVO;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;
import com.jobis.mem.resume.domain.Mem_ResumeVO;

@Service
public class Etp_Pass_ServiceImpl implements Etp_Pass_Service{

	@Inject 
	Etp_Pass_DAO dao;
	
	@Override
	public List<Mem_RecruitVO> recruit_infor(int etp_no) throws Exception {
		return dao.recruit_infor(etp_no);
	}

	@Override
	public List<Mem_ResumeVO> pass_resume_list(int recruit_no) throws Exception {
		return dao.pass_resume_list(recruit_no);
	}

	@Override
	public List<Mem_ResumeVO> pass_resume_list_all(int etp_no) throws Exception {
		return dao.pass_resume_list_all(etp_no);
	}

	@Override
	public void Etp_Pass_Update(int resume_no) throws Exception {
		dao.Etp_Pass_Update(resume_no);
	}
	
}
