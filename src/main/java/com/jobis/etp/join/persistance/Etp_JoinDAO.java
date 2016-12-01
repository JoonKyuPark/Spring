package com.jobis.etp.join.persistance;

<<<<<<< HEAD
import com.jobis.etp.join.domain.Etp_JoinDTO;
import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.domain.Etp_JoinDTO;;
=======
import com.jobis.etp.join.domain.Etp_JoinVO;

public interface Etp_JoinDAO {
	
	public void etp_JoinDAO_create(Etp_JoinVO joinVO);
	
	public String etp_idcheck(String etp_id);
	
public Etp_JoinVO etp_info_read(Integer etp_no)throws Exception;
	
	public void etp_info_update(Etp_JoinVO vo) throws Exception;
	
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2

public interface Etp_JoinDAO {
	

	/*public void etp_JoinDAO_create(Etp_joinDTO joindto);*/

	public void etp_JoinDAO_create(Etp_JoinDTO dto);

	
	public String etp_idcheck(String etp_id);
	
	public Etp_JoinDTO etp_info_read(Integer etp_no)throws Exception;
	
	public void etp_info_update(Etp_JoinDTO dto) throws Exception;
	
	public void etp_image_update(String etp_image, Integer etp_no) throws Exception;
}
