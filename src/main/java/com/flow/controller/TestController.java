package com.flow.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value="/test/")
public class TestController {

	Logger logger = LogManager.getLogger();
	
	@RequestMapping(value="test")
	public @ResponseBody String test() {
		logger.error("test...");
		return "杨汉光";
	}
}
