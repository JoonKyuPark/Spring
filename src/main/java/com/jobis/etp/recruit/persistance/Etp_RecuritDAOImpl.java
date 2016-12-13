package com.jobis.etp.recruit.persistance;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Repository;

import com.jobis.etp.recruit.domain.Etp_RecruitDTO;
import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.etp.recruit.domain.Etp_mem_infoVO;
import com.jobis.etp.recruit.domain.Etp_mem_uploadDTO;
import com.jobis.etp.recruit.domain.Etp_mem_uploadVO;

@Repository
public class Etp_RecuritDAOImpl implements Etp_RecuritDAO {
	
	
	@Inject
	private SqlSession session;
		
	private static final String namespace ="com.jobis.mappers.Etp_Recurit_Mapper";
	
	@Override
	public int getEtp_no(String  Etp_id) {
		
		return session.selectOne(namespace+".selectEtp_no",Etp_id);
	
	}

	@Override
	public void insertLog(Etp_RecruitDTO dto) throws Exception {
			
		session.insert(namespace+".InsertEtp_log",dto);
	}

	@Override
	public int getEtpLogNum() throws Exception {
		
		return session.selectOne(namespace+".select_logNum");
		
		 
	}

	@Override
	public List<Etp_RecruitVO> getList(int bno) throws Exception {

			List<Etp_RecruitVO> list =  session.selectList(namespace+".Etpselect",bno);
		
		
		return list;
		
		
		
	}

	@Override
	public List<Etp_mem_infoVO> selectList() throws Exception {

		List<Etp_mem_infoVO> list = session.selectList(namespace+".select_mem_info");
		
		
		return list;
	}

	@Override
	public void InsertMem_Upload(Etp_mem_uploadDTO dto) throws Exception {
		
		
		
		session.insert(namespace+".InsertMem_Upload",dto);
		
	}


	@Override
	public List<Etp_mem_uploadVO> UploadList(Etp_mem_uploadDTO dto) throws Exception {
		List<Etp_mem_uploadVO> list  = session.selectList(namespace+".selectUpload", dto);
	
	
		
		return list;
	}

	@Override
	public int gobackList(Etp_mem_uploadDTO dto) throws Exception {
			
		return session.selectOne(namespace+".selectGoback", dto);
	}




	

	

}
