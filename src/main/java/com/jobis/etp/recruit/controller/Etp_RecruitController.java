package com.jobis.etp.recruit.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.jobis.etp.recruit.domain.Etp_RecruitDTO;
import com.jobis.etp.recruit.domain.Etp_RecruitVO;
import com.jobis.etp.recruit.service.Etp_RecuritService;

@RestController
@RequestMapping("/etp/etp_log")
public class Etp_RecruitController {

	private String etp_id = "god31225";

	@Inject
	private Etp_RecuritService service;

	// bno 회원번호

	@RequestMapping(value = "/member_detail", method = RequestMethod.GET)
	public ResponseEntity<String> detail(@RequestParam int bno, HttpSession session, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		if (session.getAttribute("etp_id") != null) {

		}

		session.setAttribute("etp_id", etp_id);

		String etp = (String) session.getAttribute("etp_id");

		// 기업번호
		int Etp_no = service.getEtp_no(etp);

		Etp_RecruitDTO dto = new Etp_RecruitDTO();
		dto.setMem_logno(service.getEtpLogNum() + 1);
		dto.setEtp_no(Etp_no);
		dto.setMember_no(bno);

		ResponseEntity<String> entity = null;

		try {

			service.insertLog(dto);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			// TODO: handle exception
		}

		return entity;

	}

	@RequestMapping(value = "/quick_down", method = RequestMethod.GET)
	public ResponseEntity<List<Etp_RecruitVO>> list(HttpServletRequest request, HttpServletResponse response,
			HttpSession session, @CookieValue(value = "login", required = false, defaultValue = "") String testCookie)
			throws Exception {

		ResponseEntity<List<Etp_RecruitVO>> entity = null;

		if (request.getParameter(testCookie) == null) {

			Cookie loginCookie = new Cookie("login", (String) session.getAttribute("etp_id"));

			
			System.out.println("현재 접속 세션"+(String) session.getAttribute("etp_id"));
			
			loginCookie.setPath("/");
			loginCookie.setMaxAge(60 * 60 * 24 * 7);
			response.addCookie(loginCookie);
		}
		// 기업번호
		int Etp_no2 = service.getEtp_no(testCookie);

		try {

			// 리스트 출력하는거 넣고
			
			
			
			
			entity = new ResponseEntity<List<Etp_RecruitVO>>(service.getList(Etp_no2), HttpStatus.OK);

			System.out.println("엔터티 타입니다"+entity.toString());
			
			
		} catch (Exception e) {
			e.printStackTrace();

		}

		return entity;

	}

}
