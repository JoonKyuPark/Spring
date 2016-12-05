package com.jobis.etp.recruit.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;


import com.jobis.etp.recruit.domain.Etp_RecruitDTO;
import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.etp.recruit.domain.Etp_mem_infoVO;
import com.jobis.etp.recruit.domain.Etp_mem_uploadDTO;
import com.jobis.etp.recruit.domain.Etp_mem_uploadVO;
import com.jobis.etp.recruit.persistance.Etp_RecuritDAO;

@Service
public class Etp_RecuritServiceImpl implements Etp_RecuritService {
	
	@Inject
	private Etp_RecuritDAO dao;

	@Override
	public int getEtp_no(String Etp_id) throws Exception {

		return dao.getEtp_no(Etp_id);
		
		
	}

	@Override
	public void insertLog(Etp_RecruitDTO dto) throws Exception {
		dao.insertLog(dto);
		
	}

	@Override
	public int getEtpLogNum() throws Exception {
		
		
		return dao.getEtpLogNum();
		
		
		
	}

	@Override
	public List<Etp_RecruitVO> getList(int bno) throws Exception {
				
		
		return dao.getList(bno);
	}

	@Override
	public List<Etp_mem_infoVO> selectList() throws Exception {

		List<Etp_mem_infoVO> list =dao.selectList();
		
		return list;
	}

	@Override
	public void InsertMem_Upload(Etp_mem_uploadDTO dto) throws Exception {
		dao.InsertMem_Upload(dto);
		
	}


	@Override
	public List<Etp_mem_uploadVO> UploadList(Etp_mem_uploadDTO dto) throws Exception {
		return dao.UploadList(dto);
	}

	@Override
	public int gobackList(Etp_mem_uploadDTO dto) throws Exception {
		return dao.gobackList(dto);
	}



	
}
