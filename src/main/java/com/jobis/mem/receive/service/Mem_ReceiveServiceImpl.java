package com.jobis.mem.receive.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

<<<<<<< HEAD
import com.jobis.mem.notice.domain.Mem_NoticeVO;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.receive.persistance.Mem_ReceiveDAO;
import com.jobis.mem.resume.domain.Mem_ResumeVO;

@Service("receive_service")
=======
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.receive.persistance.Mem_ReceiveDAO;

@Service
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
public class Mem_ReceiveServiceImpl implements Mem_ReceiveService {

	@Inject
	private Mem_ReceiveDAO dao;
	
	@Override
	public void mem_Receive_Create(Mem_ReceivceVO mem_receive) throws Exception {
<<<<<<< HEAD
		System.out.println("ddfgrtrtrtrt");
		System.out.println(mem_receive.getResume_no());
		System.out.println(mem_receive.getRecruit_no());
		dao.mem_Receive_Create(mem_receive);
	}

	@Override
	public List<Mem_ReceivceVO> mem_Receive_List(int resume_no) throws Exception {
		return dao.mem_Receive_List(resume_no);
	}
	
	@Override
	public int resume_no(int member_no) throws Exception {
		return dao.resume_no(member_no);
	}
	
	@Override
	public List<Mem_ResumeVO> mem_resume_List(int member_no) throws Exception {
		return dao.mem_resume_List(member_no);
	}
	
	@Override
	public Integer basic_resume_no(int member_no)throws Exception{
		return dao.basic_resume_no(member_no);
	}
	
	@Override
	public List<Integer> mem_receive_overlap_create(int recruit_no)throws Exception{
		return dao.mem_receive_overlap_create(recruit_no);
	}
	
	@Override
	public void mem_Notice_Create(Mem_NoticeVO notice) throws Exception {
		dao.mem_Notice_Create(notice);
	}


=======
		dao.mem_Receive_Create(mem_receive);
	}

	@Override
	public List<Mem_ReceivceVO> mem_Receive_List(int member_no) throws Exception {
		return dao.mem_Receive_List(member_no);
	}
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2

}
