package com.its.fppbkk.controller;

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
	
	@RequestMapping("/add_restaurant")
	public String add_resto() {
		return "add_restaurant";
	}
	
	@RequestMapping("/search")
	public String searchResto() {
		return "search";
	}
	
	
	
}
