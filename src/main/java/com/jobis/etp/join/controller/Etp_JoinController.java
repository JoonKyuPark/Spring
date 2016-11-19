package com.jobis.etp.join.controller;



import java.util.List;

import javax.inject.Inject;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jobis.etp.join.domain.Etp_JoinVO;
import com.jobis.etp.join.service.Etp_JoinServiceImpl;

@Controller
public class Etp_JoinController {
	
	@Inject
	private Etp_JoinServiceImpl JoinService;
	
	
	
	@RequestMapping(value = "/join/etp", method = RequestMethod.POST)
	public String etp_Etp_JoinController_login(Etp_JoinVO joinVo, Model model) {
		  JoinService.Etp_joinService_create(joinVo);
		return "login";

	}
}