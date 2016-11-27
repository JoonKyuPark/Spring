package com.jobis.interceptor;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.mem.login.domain.Mem_LoginVO;

public class Mem_LogginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		Object model = modelAndView.getModelMap().get("member_infor");

		if (model != null) {
			Mem_LoginVO vo = (Mem_LoginVO) model;
			request.getSession().setAttribute("member_infor", vo);
		/*	String autologin = (String) modelAndView.getModelMap().get("autologin");
			if (autologin != null) {

				Cookie autoid = new Cookie("autoid", vo.getMember_id());
				Cookie autopass = new Cookie("autopass", vo.getMember_pwd());
				System.out.println(vo.getMember_pwd());
				autoid.setPath("/");
				autopass.setPath("/");
				autoid.setMaxAge(60 * 60 * 24 * 7);
				autopass.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(autoid);
				response.addCookie(autopass);
				System.out.println("@2222222222222222");
			}*/
		}

	}

}
