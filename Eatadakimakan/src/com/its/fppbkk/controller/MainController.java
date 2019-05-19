package com.its.fppbkk.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	@RequestMapping("/searchrestauranform")
	public String search_resto_form() {
		return "searchrestaurantform";
	}
	@RequestMapping("/searchresult")
	public String search_result(HttpServletRequest request, Model model) {
		String budget = request.getParameter("budget");
		model.addAttribute("budget", budget);
		String location = request.getParameter("location");
		model.addAttribute("location", location);
		String tag = request.getParameter("tag");
		model.addAttribute("tag", tag);
		return "searchresult";
	}
}
