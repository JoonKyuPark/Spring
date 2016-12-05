package com.jobis.iterceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.jdbc.core.ResultSetSupportingSqlParameter;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.mem.login.domain.Mem_LoginVO;

public class Etp_LogginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		Object model = modelAndView.getModelMap().get("etp_infor");
		String autologin = (String) modelAndView.getModelMap().get("autologin");

		if (model != null) {

			Etp_LoginVO vo = (Etp_LoginVO) model;
			request.getSession().setAttribute("etp_infor", vo);
			System.out.println(vo.getEtp_id());
			if (autologin == null) {
				System.out.println("안들어오십니까?");
				Cookie cookie1 = new Cookie("etp_autoid", null);
				Cookie cookie2 = new Cookie("etp_autopass", null);
				cookie1.setPath("/");
				cookie2.setPath("/");
				cookie2.setMaxAge(0);
				cookie1.setMaxAge(0);
				response.addCookie(cookie1);
				response.addCookie(cookie2);  //기존 기업쿠키 삭제
				
			} else {

				Cookie autoid = new Cookie("etp_autoid", vo.getEtp_id());
				Cookie autopass = new Cookie("etp_autopass", vo.getEtp_pass());

				System.out.println(autoid);
				autoid.setPath("/");
				autopass.setPath("/");
				autoid.setMaxAge(60 * 60 * 24 * 7);
				autopass.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(autoid);
				response.addCookie(autopass);
				System.out.println("쿠키생성됨");  //새로운 기업쿠키 생성
			}
		}
		System.out.println("postHandle");
	}

}
