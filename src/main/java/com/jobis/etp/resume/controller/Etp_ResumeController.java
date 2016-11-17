package com.jobis.etp.resume.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobis.etp.recruit.domain.MemberVO;
import com.jobis.etp.recruit.persistance.MemberDAO;

@Controller
@RequestMapping("/sboard/*")
public class Etp_ResumeController {

	@Inject
	private MemberDAO dao;
	
		@RequestMapping(value="/home", method=RequestMethod.GET)
		public void testGetTime() {
			System.out.println(dao.getTime());
		}

		/*@RequestMapping(value="/register", method=RequestMethod.GET)
		public void testInsertMember() {
			MemberVO vo = new MemberVO();
			vo.setUserid("user10");
			vo.setUserpw("1234");
			vo.setUsername("ȫ�浿");
			vo.setEmail("aa@aa.com");
			
			dao.insertMember(vo);
		
		}*/
}
