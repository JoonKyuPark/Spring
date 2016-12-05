package com.jobis.aop;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletWebRequest;

import com.jobis.mem.login.domain.Mem_LoginDTO;
import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.login.persistance.Mem_LoginDAO;


@Aspect
public class LoginAOP {

	@Around("execution(public * *LoginService_selelct(..))")
	public void passenecoding(ProceedingJoinPoint re) throws Throwable{
		Object[ ] getArgs= re.getArgs();
		Mem_LoginDTO dto=(Mem_LoginDTO)getArgs[0];
		/*dto.getMember_pwd();*/
		Mem_LoginVO c2=(Mem_LoginVO)re.proceed();
		String c= 	dto.getMember_pwd();
		
		String[] r = c.split(",");
		String pass2 = "";
		for (int k = 0; k < r.length; k++) {
			int y = Integer.parseInt(r[k]);
			pass2 += Character.toString((char) (y - 5));

			System.out.println(pass2);
			 dto.setMember_pwd(pass2);
			 getArgs[0]=dto;
			re.proceed(getArgs);
		}
		
	}
}
