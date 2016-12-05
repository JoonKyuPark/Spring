package com.jobis.etp.clip.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/test/*")
public class TestController {
	@RequestMapping(value="/test")
	public void test(){}
}
