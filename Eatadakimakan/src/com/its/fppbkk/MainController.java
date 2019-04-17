package com.its.fppbkk;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	
	@RequestMapping("/")
	public String Home() {
		return "index";
	}
	
	@RequestMapping("/admin")
	public String Admin() {
		return "admin";
	}
	
	@RequestMapping("/login")
	public String Login() {
		return "login";
	}
	
}
