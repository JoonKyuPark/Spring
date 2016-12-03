package com.jobis.etp.pass.persistance;

import java.util.List;

import com.jobis.etp.exam.domain.Etp_ExamVO;
import com.jobis.mem.clip.domain.Mem_ClipVO;
import com.jobis.mem.notice.domain.Mem_NoticeVO;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;
import com.jobis.mem.resume.domain.Mem_ResumeVO;

public interface Etp_Pass_DAO {

	public List<Mem_RecruitVO> recruit_infor(int etp_no)throws Exception;

	public List<Mem_ResumeVO> pass_resume_list(int recruit_no) throws Exception;

	public List<Mem_ResumeVO> pass_resume_list_all(int etp_no)throws Exception;
	
	public void Etp_Pass_Update(Mem_ReceivceVO mem_ReceiveVO) throws Exception;
	
	public List<Etp_ExamVO> pass_exam_list(int etp_no)throws Exception;
	
	public void pass_exam_notice(Mem_NoticeVO mem_noticeVO)throws Exception;
	
	public int pass_member_no(int resume_no)throws Exception;
	
	public Etp_ExamVO pass_exam_name(int exam_no)throws Exception;
	
	public List<Mem_ResumeVO> Etp_Refresh_List (int rno)throws Exception;
}
