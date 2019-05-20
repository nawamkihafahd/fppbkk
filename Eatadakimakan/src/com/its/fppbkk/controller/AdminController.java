package com.its.fppbkk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.its.fppbkk.entity.Menu;
import com.its.fppbkk.entity.Restoran;
import com.its.fppbkk.service.MenuService;
import com.its.fppbkk.service.RestoranService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private RestoranService restoranService;
	
	@Autowired
	private MenuService menuService;
	
	@GetMapping("/panel")
	public String adminPanel() {
		return "/admin/panel";
	}
	
	@GetMapping("/managerestaurant")
	public String manageRestaurant(Model theModel){
		
		List<Restoran> restoku = restoranService.getRestoran();		
		
		theModel.addAttribute("restoku", restoku);
		
		return "/admin/manage_restaurant";
	}
	
	@GetMapping("/editrestaurant")
	public String editRestaurant(@RequestParam("restoID")int theInt,Model theModel) {
		
		Restoran restoku = restoranService.getRestoranByID(theInt);
		
		theModel.addAttribute("restoku", restoku);
		
		return "/admin/restaurant_form";
	}
	
	@GetMapping("/managemenu")
	public String manageMenu(@RequestParam("restoID")int theInt,Model theModel) {
		
		List<Menu> menuku = menuService.getMenuRestoran(theInt);
		
		theModel.addAttribute("menuku", menuku);
		
		return "/admin/restaurant_form";
	}

	@GetMapping("/managetag")
	public String manageTag() {
		return "/admin/manage_tag";
	}
	
	@GetMapping("/showFormForAdd")
	public String addRestaurant(Model theModel){
		
		Restoran resto = new Restoran();
		
		theModel.addAttribute("restoku", resto);
		
		return "/admin/restaurant_form";
	}
}
