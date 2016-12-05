package com.jobis.iterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {

	// 로그인하고 하던 페이지로 넘어가기
	private void saveDest(HttpServletRequest request) {
		String uri = request.getRequestURI();
		String query = request.getQueryString();

		if (query == null || query.equals(null)) {
			query = "";

		} else {
			query = "?" + query;
		}

		if (request.getMethod().equals("GET")) {
			request.getSession().setAttribute("dest", uri+query);
		}
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		session.setAttribute("member", 1);
		//session.removeAttribute("member");
		if (session.getAttribute("member") == null) {
			saveDest(request);
			response.sendRedirect("/recruit/mem_Recruit_List_Form");

			return false;
		}

		return true;
	}


}
