package com.its.fppbkk.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.its.fppbkk.entity.Restoran;
import com.its.fppbkk.service.RestoranService;
import com.its.fppbkk.service.RestoranServiceImpl;
import com.its.fppbkk.controller.RestoranController;

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
	
	
	@RequestMapping("/add_restaurant")
	public String add_resto() {
		return "add_restaurant";
	}
	
	@RequestMapping("/search")
	public String searchResto() {
		return "search";
	}
	
}
