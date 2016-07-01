package org.wctf.quartz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BaseControl {
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		System.out.println("index------");
		return "index.jsp";
	}

}
