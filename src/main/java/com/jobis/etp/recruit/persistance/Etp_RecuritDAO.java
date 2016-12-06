package com.jobis.etp.recruit.persistance;


import java.util.List;


import com.jobis.etp.recruit.domain.Etp_RecruitDTO;
import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.etp.recruit.domain.Etp_mem_infoVO;
import com.jobis.etp.recruit.domain.Etp_mem_uploadDTO;
import com.jobis.etp.recruit.domain.Etp_mem_uploadVO;

public interface Etp_RecuritDAO {
	
	public int getEtp_no(String Etp_id)throws Exception;
	public void insertLog(Etp_RecruitDTO dto)throws Exception;
	public int getEtpLogNum()throws Exception;
	public List<Etp_RecruitVO> getList(int bno)throws Exception;
	public List<Etp_mem_infoVO> selectList()throws Exception;
	public void InsertMem_Upload(Etp_mem_uploadDTO dto)throws Exception;
	public List<Etp_mem_uploadVO> UploadList(Etp_mem_uploadDTO dto)throws Exception;
	public int gobackList(Etp_mem_uploadDTO dto)throws Exception;
	
	

}
