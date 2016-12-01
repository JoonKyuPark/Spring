package com.jobis.mem.recruit.controller;

import java.util.ArrayList;
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
<<<<<<< HEAD
import com.jobis.mem.recruit.domain.Mem_RecruitCriteria;
import com.jobis.mem.recruit.domain.Mem_RecruitPageMaker;
=======
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
import com.jobis.mem.recruit.service.Mem_RecruitService;

@Controller
@RequestMapping("/recruit/*")
public class Mem_RecruitController {

	@Inject
	private Mem_RecruitService service;
	@Inject 
	private Mem_ClipService clip_service;
<<<<<<< HEAD
	

	@RequestMapping(value = "/mem_Recruit_List_Form", method = RequestMethod.GET)
	public String mem_recruit_List(Mem_RecruitCriteria cri, Model model) throws Exception {
		//채용공고의 정보
		model.addAttribute("recruit_list", service.mem_Recruit_List_Criteria(cri));
		
		//채용공고의 회사 정보
		List<Etp_JoinVO> etp_read_list = new ArrayList<Etp_JoinVO>();
		for (int i = 0; i < service.mem_Recruit_List_Criteria(cri).size(); i++) {
			etp_read_list.add(service.etp_Join_Read((service.mem_Recruit_List_Criteria(cri)).get(i).getEtp_no()));
		}
		model.addAttribute("etp_read_list", etp_read_list);
		
		//페이징 FOOTER
		Mem_RecruitPageMaker pageMaker=new Mem_RecruitPageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.countPageing(cri));
		model.addAttribute("pageMaker", pageMaker);
		
=======

	@RequestMapping(value = "/mem_Recruit_List_Form", method = RequestMethod.GET)
	public String mem_recruit_List(Model model) throws Exception {
		model.addAttribute("recruit_list", service.mem_Recruit_List());
		List<Etp_JoinVO> etp_read_list = new ArrayList<Etp_JoinVO>();
		for (int i = 0; i < service.mem_Recruit_List().size(); i++) {
			etp_read_list.add(service.etp_Join_Read((service.mem_Recruit_List()).get(i).getEtp_no()));
		}
		model.addAttribute("etp_read_list", etp_read_list);
>>>>>>> refs/remotes/HanMuYoung/ParkJoonKyu2
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