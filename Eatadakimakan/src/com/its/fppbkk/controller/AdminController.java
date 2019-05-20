package com.its.fppbkk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.its.fppbkk.entity.Menu;
import com.its.fppbkk.entity.Restoran;
import com.its.fppbkk.entity.Tag;
import com.its.fppbkk.service.MenuService;
import com.its.fppbkk.service.RestoranService;
import com.its.fppbkk.service.TagService;

@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private RestoranService restoranService;
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private TagService tagService;
	
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
	public String editRestaurant(@RequestParam("restoranID")int theInt,Model theModel) {
		
		Restoran restoku = restoranService.getRestoranByID(theInt);
		
		theModel.addAttribute("restoku", restoku);
		
		return "/admin/restaurant_form";
	}
	
	@GetMapping("/managemenu")
	public String manageMenu(@RequestParam("restoranID") int theInt,Model theModel) {
		
		Restoran resto = restoranService.getRestoranByID(theInt);
		
		List<Menu> menuku = menuService.getMenuRestoran(theInt);
		
		
		theModel.addAttribute("menuku", menuku);
		theModel.addAttribute("restoku",resto);
		
		return "/admin/manage_menu";
	}

	@GetMapping("/managetag")
	public String manageTag(Model theModel) {
		
		List<Tag> tagku = tagService.getTag();
		
		theModel.addAttribute("tagku", tagku);
		
		return "/admin/manage_tag";
	}
	
	@GetMapping("/showFormForAdd")
	public String addRestaurant(Model theModel){
		
		Restoran resto = new Restoran();
		
		theModel.addAttribute("restoku", resto);
		
		return "/admin/restaurant_form";
	}
	
	@GetMapping("/showFormForAddMenu")
	public String addMenu(@ModelAttribute("restoID") int theRestoID, Model theModel){
	
		Menu menuku = new Menu();
		
		theModel.addAttribute("restoID", theRestoID);
		
		theModel.addAttribute("menuku", menuku);
		
		return "/admin/menu_form";
	}
	
	@PostMapping("/saveResto")
	public String saveRestaurant(@ModelAttribute("restoku") Restoran resto) {
		
		restoranService.saveRestoran(resto);
		
		return "redirect:/admin/managerestaurant";
	}
	
	@PostMapping("/saveMenu")
	public String saveRestaurant(@ModelAttribute("restoID") int theID,@ModelAttribute("menuku") Menu theMenu,Model resolveModel) {
		
		Restoran resto = restoranService.getRestoranByID(theID);
		
		theMenu.setRestoran(resto);
		
		menuService.saveMenu(theMenu);
		
		resolveModel.addAttribute("restoranID", theID);
		
		return "redirect:/admin/managemenu";
	}
	
	@GetMapping("/deleterestaurant")
	public String deleteRestaurant(@ModelAttribute("restoranID")int theID) {
		
		restoranService.deleteRestoran(theID);
		
		return "redirect:/admin/managerestaurant";
	}
	
	@GetMapping("/showFormForAddTag")
	public String addTag(Model theModel){
		
		Tag tag = new Tag();
		
		theModel.addAttribute("tagku", tag);
		
		return "/admin/tag_form";
	}
	
	@PostMapping("/saveTag")
	public String saveTag(@ModelAttribute("tagku") Tag tag) {
		
		tagService.saveTag(tag);
		
		return "redirect:/admin/managetag";
	}
}
