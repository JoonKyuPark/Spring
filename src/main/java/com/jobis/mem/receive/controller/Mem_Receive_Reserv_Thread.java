package com.jobis.mem.receive.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.aspectj.apache.bcel.generic.NEW;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.jobis.mem.notice.domain.Mem_NoticeVO;
import com.jobis.mem.notice.service.Mem_NoticeService;
import com.jobis.mem.receive.domain.Mem_ReceivceVO;
import com.jobis.mem.receive.service.Mem_ReceiveService;

public class Mem_Receive_Reserv_Thread extends Thread {
	
	//일반클래스에서 스프링 객체인 서비스 객체 가져오기위함

	 //현재 요청중인 thread local의 HttpServletRequest 객체 가져오기
	 HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	 
	 //HttpSession 객체 가져오기
	 HttpSession session = request.getSession();
	 
	 //ServletContext 객체 가져오기
	 ServletContext conext = session.getServletContext();
	
	 //Spring Context 가져오기
	 WebApplicationContext wContext = WebApplicationContextUtils.getWebApplicationContext(conext);
	 
	 //입사지원 빈 서비스 객체가져옴
	 Mem_ReceiveService receive_service = (Mem_ReceiveService)wContext.getBean("receive_service");
	 
	 //알림 빈 서비스 객체가져옴
	 Mem_ReceiveService notice_service;
	 

	private int mYear, mMonth, mDay, mHour, mMinute;
	Mem_ReceivceVO mem_receive;
	Mem_NoticeVO mem_notice;
	 
	public Mem_Receive_Reserv_Thread() {
	}

	public Mem_Receive_Reserv_Thread(int year, int month, int day, int hour, int minute, Mem_ReceivceVO mem_receive,Mem_NoticeVO mem_notice) {
		this.mYear = year;
		this.mMonth = month;
		this.mDay = day;
		this.mHour = hour;
		this.mMinute = minute;
		this.mem_receive = mem_receive;
		this.mem_notice=mem_notice;
	}

	@Override
	public void run() {
		try {
			sleep(timeUntil(mYear, mMonth, mDay, mHour, mMinute));//일시정지
			work();// 작업을 수행

		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}

	public void work() {
		try {
			receive_service.mem_Receive_Create(mem_receive);// 입사지원
			System.out.println(mem_notice.getMember_no());
			receive_service.mem_Notice_Create(mem_notice);//알림 센터 
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	//남는 시간 계산
	public long timeUntil(int year, int month, int day, int hour, int minute) {
		Date now = new Date();

		Calendar calUntil = Calendar.getInstance();
		calUntil.set(Calendar.YEAR, year);
		calUntil.set(Calendar.MONTH, month - 1);
		calUntil.set(Calendar.DATE, day);
		calUntil.set(Calendar.HOUR_OF_DAY, hour);
		calUntil.set(Calendar.MINUTE, minute);
		calUntil.set(Calendar.SECOND, 0);

		Date until = calUntil.getTime();

		long sleep = until.getTime() - now.getTime();
		System.out.println(sleep);

		String today = (new SimpleDateFormat("예약시간:yyyy년MM월dd일HH시mm분ss초").format(until));
		System.out.println(today);
		String todayd = (new SimpleDateFormat("현재시간:yyyy년MM월dd일HH시mm분ss초").format(now.getTime()));
		System.out.println(todayd);

		return sleep;
	}
}