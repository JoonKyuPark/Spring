package com.jobis.etp.join.persistance;

<<<<<<< HEAD
import java.util.List;

=======
>>>>>>> refs/remotes/KimMinJeong/HanMuYoung
import com.jobis.etp.join.domain.Etp_JoinVO;

public interface Etp_JoinDAO {
	
<<<<<<< HEAD
	//public void etp_JoinDAO_create(Etp_JoinVO joinVO);
	
	public Etp_JoinVO etp_info_read(Integer etp_no)throws Exception;
	
	public void etp_info_update(Etp_JoinVO vo) throws Exception;
	
	public List<Etp_JoinVO> etp_recruit_list()throws Exception;
=======
	public void etp_JoinDAO_create(Etp_JoinVO joinVO);
	
	public String etp_idcheck(String etp_id);
	
public Etp_JoinVO etp_info_read(Integer etp_no)throws Exception;
	
	public void etp_info_update(Etp_JoinVO vo) throws Exception;
	
>>>>>>> refs/remotes/KimMinJeong/HanMuYoung

}
