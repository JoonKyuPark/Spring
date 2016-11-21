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
		//String autologin = (String) modelAndView.getModelMap().get("autologin");

		if (model != null) {

			Etp_LoginVO vo = (Etp_LoginVO) model;
			request.getSession().setAttribute("etp_infor", vo);
			System.out.println(vo.getEtp_id());
		/*	if (autologin == null) {
				if (request.getCookies() == null) {
					Cookie[] cookies = request.getCookies();
					for (int i = 0; i < cookies.length; i++) {
						if (cookies[i].getName().equals("auto")) {
							cookies[i].setMaxAge(0);
						}
					}

				}

			} else if (autologin.equals("auto")) {
				
				 * if(request.getCookies()!=null){ Cookie[]
				 * cookies=request.getCookies(); for(int i=0; i<cookies.length;
				 * i++){ if(cookies[i].getName().equals("auto")){
				 * cookies[i].setMaxAge(0); } }
				 * 
				 * }
				 

				Cookie autoid= new Cookie("autoid", vo.getEtp_id());
				Cookie autopass= new Cookie("autopass", vo.getEtp_pass());
				autoid.setPath("/");
				autopass.setPath("/");
				autoid.setMaxAge(60*60*24*7);
				autopass.setMaxAge(60*60*24*7);
				response.addCookie(autoid);
				response.addCookie(autopass);
			}*/

		}

		System.out.println("postHandle");

	}

}
