package com.jobis.interceptor;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.jobis.etp.login.domain.Etp_LoginVO;
import com.jobis.etp.login.service.Etp_LoginService;
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
		
	Etp_LoginVO	vo=(Etp_LoginVO)request.getSession().getAttribute("etp_infor");    
		Mem_LoginVO vo2=(Mem_LoginVO)request.getSession().getAttribute("member_infor");  
		if(vo==null&&vo2==null){
			response.sendRedirect("/login");
			return false;
			
		}else if(vo!=null){
			System.out.println("if1");
			Cookie[] cookies= request.getCookies();
			Etp_LoginVO etp_loginvo= new Etp_LoginVO();
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("autoid")){				
					etp_loginvo.setEtp_id(cookies[i].getValue());
				}else if(cookies[i].getName().equals("autopass")){
					etp_loginvo.setEtp_pass(cookies[i].getValue());
					etp_login.loginservice(etp_loginvo);
					response.sendRedirect("etp_login");
					return false;
				}
			}
			
		}
		else if(vo2!=null){
			Cookie[] cookies= request.getCookies();
			Mem_LoginVO mem_loginvo= new Mem_LoginVO();
			for(int i=0; i<cookies.length; i++){
				if(cookies[i].getName().equals("autoid")){				
					mem_loginvo.setMember_id(cookies[i].getValue());
				}else if(cookies[i].getName().equals("autopass")){
					mem_loginvo.setMember_id(cookies[i].getValue());
					mem_login.Mem_LoginService_selelct(mem_loginvo);
					response.sendRedirect("mem_login");
				}
			};
		
		
		}
		return true;

	}
}
