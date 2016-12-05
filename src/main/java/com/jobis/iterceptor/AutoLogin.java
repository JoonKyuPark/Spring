package com.jobis.iterceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.digester.SetNestedPropertiesRule;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.etp.login.domain.Etp_loginDTO;
import com.jobis.etp.login.service.Etp_LoginService;
import com.jobis.mem.login.domain.Mem_LoginDTO;
import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.login.service.Mem_LoginService;

public class AutoLogin extends HandlerInterceptorAdapter {
	@Inject
	private Mem_LoginService mem_login;
	@Inject
	private Etp_LoginService etp_login;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		Etp_LoginVO vo = (Etp_LoginVO) request.getSession().getAttribute("etp_infor");
		Mem_LoginVO vo2 = (Mem_LoginVO) request.getSession().getAttribute("member_infor");
		Cookie[] cookies = request.getCookies();
		System.out.println("if");
		if (vo == null && vo2 == null) {
			System.out.println("if222222");

			if (cookies != null) {
				Etp_loginDTO etp_logindto = new Etp_loginDTO();
				Mem_LoginDTO mem_logindto = new Mem_LoginDTO();
				for (int i = 0; i < cookies.length; i++) {

					if (cookies[i].getName().equals("etp_autoid")) {

						etp_logindto.setEtp_id(cookies[i].getValue());
						System.out.println("아이디:" + cookies[i].getValue());

					} else if (cookies[i].getName().equals("etp_autopass")) {
						etp_logindto.setEtp_pass(cookies[i].getValue());

						System.out.println(etp_logindto.getEtp_pass());

						request.getSession().setAttribute("etp_infor", etp_login.etp_loginservice_selelct(etp_logindto));

						System.out.println("쿠키로 로그인?");

						response.sendRedirect("/etp_login");
						return false;
					}

					else if (cookies[i].getName().equals("mem_autoid")) {
						mem_logindto.setMember_id(cookies[i].getValue());
					} else if (cookies[i].getName().equals("mem_autopass")) {
						mem_logindto.setMember_pwd(cookies[i].getValue());
						System.out.println(cookies[i].getValue());
						System.out.println("멤버 쿠키 생성됨???");
                         
						request.getSession().setAttribute("member_infor",
								mem_login.Mem_LoginService_selelct(mem_logindto));
						response.sendRedirect("/mem_loginOK");
						return false;
					}

				}
				return true;

			}
			response.sendRedirect("/login");
			return true;

		} else if (vo != null) {

			response.sendRedirect("/etp_login");
		} else if (vo2 != null) {

			response.sendRedirect("mem_login");
		}

		return true;

	}

}
