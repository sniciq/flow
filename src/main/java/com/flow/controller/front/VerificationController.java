package com.flow.controller.front;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping(value="/resources/f/verification/")
public class VerificationController {

	@RequestMapping(value="img")
	public void img(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("aaa");
	}
}
