package com.jobis.mem.recruit.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.service.Etp_JoinService;
import com.jobis.mem.clip.service.Mem_ClipService;
import com.jobis.mem.recruit.domain.Mem_RecruitCriteria;
import com.jobis.mem.recruit.domain.Mem_RecruitPageMaker;
import com.jobis.mem.recruit.domain.Mem_RecruitVO;
import com.jobis.mem.recruit.service.Mem_RecruitService;

@Controller
@RequestMapping("/recruit/*")
public class Mem_RecruitController {

	@Inject
	private Mem_RecruitService service;
	@Inject 
	private Mem_ClipService clip_service;
	

	@RequestMapping(value = "/mem_Recruit_List_Form", method = RequestMethod.GET)
	public String mem_recruit_List(Mem_RecruitCriteria cri, Model model) throws Exception {
		//채용공고의 정보
		model.addAttribute("recruit_list", service.mem_Recruit_List_Criteria(cri));
		//채용공고의 회사 정보
		List<Etp_JoinVO> etp_read_list = new ArrayList<Etp_JoinVO>();
		List<Integer> mem_clip_count=new ArrayList<Integer>();
		List<String> recruit_addr=new ArrayList<String>();
		List<String> d_day=new ArrayList<String>();
		for (int i = 0; i < service.mem_Recruit_List_Criteria(cri).size(); i++) {
			etp_read_list.add(service.etp_Join_Read((service.mem_Recruit_List_Criteria(cri)).get(i).getEtp_no()));
			mem_clip_count.add(clip_service.mem_Clip_Count(service.mem_Recruit_Read(service.mem_Recruit_List_Criteria(cri).get(i).getRecruit_no()).getRecruit_no()));
			String recruit_addr_arr[] =service.mem_Recruit_List_Criteria(cri).get(i).getRecruit_addr().split("/");
			String recruit_addr_2 = recruit_addr_arr[1].substring(1, 3);
			recruit_addr.add(recruit_addr_2);
			
			Calendar cal = Calendar.getInstance();
			long now_day = cal.getTimeInMillis(); //현재 시간
			String date[]=(service.mem_Recruit_List_Criteria(cri)).get(i).getReceive_ddate().split("/");
			int month=Integer.parseInt(date[0]);
			int year=Integer.parseInt(date[2]);
			int day=Integer.parseInt(date[1]);
			cal.set(year, month-1, day); //목표일을 cal에 set
			long event_day = cal.getTimeInMillis(); //목표일에 대한 시간
			long dday=(event_day - now_day) / (60*60*24*1000);
			d_day.add(Long.toString(dday));
		}
		model.addAttribute("etp_read_list", etp_read_list);
		model.addAttribute("recruit_addr", recruit_addr);
		model.addAttribute("mem_clip_count", mem_clip_count);
		model.addAttribute("d_day", d_day);
		
		//페이징 FOOTER
		Mem_RecruitPageMaker pageMaker=new Mem_RecruitPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countPageing(cri));
		model.addAttribute("pageMaker", pageMaker);
		
		return "/recruit/mem_Recruit_List_Form";
	}
	
	@RequestMapping(value="/mem_Recruit_Read_Form", method=RequestMethod.GET)
	public void mem_Recruit_Read(@RequestParam("rno") int rno, Model model )throws Exception{
		model.addAttribute("recruit_read", service.mem_Recruit_Read(rno));
		String recruit_addr_arr[] = service.mem_Recruit_Read(rno).getRecruit_addr().split("/");
		String recruit_addr_2 = recruit_addr_arr[1];
		model.addAttribute("recruit_addr_2", recruit_addr_2);
		String recruit_addr_3=recruit_addr_2.split(" ")[1];
		String recruit_addr_4=recruit_addr_2.split(" ")[2];
		model.addAttribute("recruit_addr_3", recruit_addr_3);
		model.addAttribute("recruit_addr_4", recruit_addr_4);
		model.addAttribute("etp_read", service.etp_Join_Read(service.mem_Recruit_Read(rno).getEtp_no()));
		model.addAttribute("mem_clip_count", (clip_service.mem_Clip_Count(service.mem_Recruit_Read(rno).getRecruit_no())));
		
		
	}

	
}