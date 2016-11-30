package com.jobis.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jobis.etp.login.domain.Etp_LoginVO;

public class Etp_LogginInterceptor extends HandlerInterceptorAdapter {


	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		Object model = modelAndView.getModelMap().get("etp_infor");

		if (model != null) {
			Etp_LoginVO vo = (Etp_LoginVO) model;
			request.getSession().setAttribute("etp_infor", vo);

		}
	}

}
