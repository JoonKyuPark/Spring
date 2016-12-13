package com.jobis.iterceptor;

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
		String autologin = (String) modelAndView.getModelMap().get("autologin");

		if (model != null) {
			Mem_LoginVO vo = (Mem_LoginVO) model;
			request.getSession().setAttribute("member_infor", vo); // 캐스팅
			
			if (autologin == null) {
				Cookie cookie1 = new Cookie("mem_autoid", null);
				Cookie cookie2 = new Cookie("mem_autopass", null);
				cookie1.setPath("/");
				cookie2.setPath("/");
				cookie2.setMaxAge(0);
				cookie1.setMaxAge(0);
				response.addCookie(cookie1);
				response.addCookie(cookie2); // 기존 멤버 쿠키 삭제
			}

			else {
				System.out.println("2222222222222222222222;");
				Cookie autoid = new Cookie("mem_autoid", vo.getMember_id());
				Cookie autopass = new Cookie("mem_autopass", vo.getMember_pwd());
				System.out.println("쿠키 비밀번호:"+vo.getMember_pwd());
				autoid.setPath("/");
				autopass.setPath("/");
				autoid.setMaxAge(60 * 60 * 24 * 7);
				autopass.setMaxAge(60 * 60 * 24 * 7);
				response.addCookie(autoid);
				response.addCookie(autopass);
				System.out.println("@2222222222222222"); // 새로운 멤버 쿠키 생성
			}
		}
	}
}