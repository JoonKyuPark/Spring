/*package com.jobis.iterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletWebRequest;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jobis.mem.join.domain.Mem_joinDTO;

public class PassEncoding extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("22222");
		String pass= request.getParameter("member_pwd");
		System.out.println("입력비밀번호"+pass);
		String c = "";
		for (int i = 0; i < pass.length(); i++) {
			pass.substring(i);
			System.out.println((int) pass.substring(i, i + 1).charAt(0));
			if (i == pass.length() - 1) {
				c += (int) pass.substring(i, i + 1).charAt(0) + 5;
			} else {
				c += (int) pass.substring(i, i + 1).charAt(0) + 5 + ",";
			}

		}
		 

		 
		System.out.println(request.getParameter("member_pwd"));
	
		return true;
	}




}
*/