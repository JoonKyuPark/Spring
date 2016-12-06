package com.jobis.mem.notice.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jobis.mem.clip.domain.Mem_ClipVO;
import com.jobis.mem.login.domain.Mem_LoginVO;
import com.jobis.mem.notice.domain.Mem_NoticeVO;
import com.jobis.mem.notice.service.Mem_NoticeService;

@Controller
@RequestMapping("/notice")
public class Mem_NoticeController {

	@Inject
	Mem_NoticeService service;

	public static int notice_count = 0;

	@ResponseBody
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public List<Mem_NoticeVO> mem_notice(HttpServletRequest request, Model model) throws Exception {
		Mem_LoginVO member_infor = (Mem_LoginVO) request.getSession().getAttribute("member_infor");
		int member_no = member_infor.getMember_no();
		try {
			if (notice_count < service.mem_Notice_List_three(member_no).size()) {
				notice_count = service.mem_Notice_List_three(member_no).size();
			}
		} catch (Exception e) {
		}
		return service.mem_Notice_List_three(member_no);
	}

	@RequestMapping(value = "mem_Notice_List_Form", method = RequestMethod.GET)
	public void mem_notice_list(HttpServletRequest request, Model model) throws Exception {
		Mem_LoginVO member_infor = (Mem_LoginVO) request.getSession().getAttribute("member_infor");
		int member_no = member_infor.getMember_no();
		model.addAttribute("mem_notice_list",service.mem_Notice_List(member_no));
	}

}
