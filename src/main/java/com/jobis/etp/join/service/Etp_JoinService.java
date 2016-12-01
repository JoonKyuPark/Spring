package com.jobis.etp.join.service;

<<<<<<< HEAD
import java.util.List;

=======
import com.jobis.etp.join.domain.Etp_JoinDTO;
>>>>>>> refs/remotes/HanMuYoung/KimMinJeong3
import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.domain.Etp_joinDTO;

public interface Etp_JoinService {
	
<<<<<<< HEAD
	public void Etp_joinService_create(Etp_joinDTO etp_joindto);
=======
	public void Etp_joinService_create(Etp_JoinDTO dto);
>>>>>>> refs/remotes/HanMuYoung/KimMinJeong3
	
	public String etp_idcheck(String etp_id);
	
	public Etp_JoinDTO etp_info_read(Integer etp_no)throws Exception;
	
<<<<<<< HEAD
	public void etp_info_update(Etp_JoinVO vo)throws Exception;
	

	
=======
	public void etp_info_update(Etp_JoinDTO dto)throws Exception;
	public void etp_image_update(String etp_image, Integer etp_no) throws Exception;
>>>>>>> refs/remotes/HanMuYoung/KimMinJeong3
}
