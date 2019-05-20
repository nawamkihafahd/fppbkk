package com.its.fppbkk.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.its.fppbkk.entity.Restoran;
import com.its.fppbkk.service.RestoranService;
import com.its.fppbkk.service.RestoranServiceImpl;

@Controller
public class MainController {
	
	@Autowired
	private RestoranService restoranService;
	
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
		String location = request.getParameter("location");
		List<Restoran> resto= restoranService.getRestoranByBudget(Integer.parseInt(budget));
		model.addAttribute("resto",resto);
		return "searchresult";
	}
}
