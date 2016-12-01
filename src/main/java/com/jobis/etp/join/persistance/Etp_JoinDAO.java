package com.jobis.etp.join.persistance;

import com.jobis.etp.join.domain.Etp_JoinDTO;
import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.domain.Etp_joinDTO;

public interface Etp_JoinDAO {
	
<<<<<<< HEAD
	public void etp_JoinDAO_create(Etp_joinDTO joindto);
=======
	public void etp_JoinDAO_create(Etp_JoinDTO dto);
>>>>>>> refs/remotes/HanMuYoung/KimMinJeong3
	
	public String etp_idcheck(String etp_id);
	
	public Etp_JoinDTO etp_info_read(Integer etp_no)throws Exception;
	
	public void etp_info_update(Etp_JoinDTO dto) throws Exception;
	
	public void etp_image_update(String etp_image, Integer etp_no) throws Exception;
}
