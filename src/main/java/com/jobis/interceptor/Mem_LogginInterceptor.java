package com.jobis.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jobis.mem.login.domain.Mem_LoginVO;

public class Mem_LogginInterceptor extends HandlerInterceptorAdapter {

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		Object model = modelAndView.getModelMap().get("member_infor");

		if (model != null) {
			Mem_LoginVO vo = (Mem_LoginVO) model;
			request.getSession().setAttribute("member_infor", vo);

		}

	}

}
