package com.its.fppbkk.controller;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	public String adminPanel(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue) {
		if(!kue.equals("admin"))
			return "/admin/login";
		return "/admin/panel";
	}
	/*
	@GetMapping("/")
	public String base() {
		return "redirect:/admin/login";
	}
	*/
	
	@GetMapping("/login")
	public String loginform() {
		return "/admin/login";
	}
	
	@RequestMapping(value = "/loginresult", method=RequestMethod.POST, params="submit")
	public String loginres(HttpServletResponse response, HttpServletRequest request, Model model) {
		String username = request.getParameter("inputUsername");
		String password = request.getParameter("inputPassword");
		
		if (username.equals("admin") && password.equals("admin")) {
			Cookie priv = new Cookie("priv", "admin");
			priv.setMaxAge(1800);
					
			response.addCookie(priv);
			return "admin/panel";
		}
		else {
			return "admin/login";
		}
		
	}
	
	
	@GetMapping("/managerestaurant")
	public String manageRestaurant(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, Model theModel){
		if(!kue.equals("admin"))
			return "/admin/login";
		List<Restoran> restoku = restoranService.getRestoran();		
		
		theModel.addAttribute("restoku", restoku);
		
		return "/admin/manage_restaurant";
	}
	
	@GetMapping("/editrestaurant")
	public String editRestaurant(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @RequestParam("restoranID")int theInt,Model theModel) {
		if(!kue.equals("admin"))
			return "/admin/login";
		Restoran restoku = restoranService.getRestoranByID(theInt);
		
		theModel.addAttribute("restoku", restoku);
		
		return "/admin/restaurant_form";
	}
	
	@GetMapping("/managemenu")
	public String manageMenu(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @RequestParam("restoranID") int theInt,Model theModel) {
		if(!kue.equals("admin"))
			return "/admin/login";
		Restoran resto = restoranService.getRestoranByID(theInt);
		
		List<Menu> menuku = menuService.getMenuRestoran(theInt);
		
		
		theModel.addAttribute("menuku", menuku);
		theModel.addAttribute("restoku",resto);
		
		return "/admin/manage_menu";
	}

	@GetMapping("/managetag")
	public String manageTag(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, Model theModel) {
		if(!kue.equals("admin"))
			return "/admin/login";
		List<Tag> tagku = tagService.getTag();
		
		theModel.addAttribute("tagku", tagku);
		
		return "/admin/manage_tag";
	}
	
	@GetMapping("/showFormForAdd")
	public String addRestaurant(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, Model theModel){
		if(!kue.equals("admin"))
			return "/admin/login";
		Restoran resto = new Restoran();
		
		theModel.addAttribute("restoku", resto);
		
		return "/admin/restaurant_form";
	}
	
	@GetMapping("/showFormForAddMenu")
	public String addMenu(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @ModelAttribute("restoID") int theRestoID, Model theModel){
		if(!kue.equals("admin"))
			return "/admin/login";
		Menu menuku = new Menu();
		
		theModel.addAttribute("restoID", theRestoID);
		
		theModel.addAttribute("menuku", menuku);
		
		return "/admin/menu_form";
	}
	
	@GetMapping("/showFormForEditMenu")
	public String editMenu(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @ModelAttribute("restoID") int theRestoID,@ModelAttribute("menuID")int menuID ,Model theModel){
		if(!kue.equals("admin"))
			return "/admin/login";
		Menu menuku = menuService.getMenuByID(menuID);
		
		theModel.addAttribute("restoranID", theRestoID);
		
		theModel.addAttribute("menuku", menuku);
		
		return "/admin/menu_form";
	}
	
	@PostMapping("/saveResto")
	public String saveRestaurant(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @ModelAttribute("restoku") Restoran resto) {
		if(!kue.equals("admin"))
			return "/admin/login";
		restoranService.saveRestoran(resto);
		
		return "redirect:/admin/managerestaurant";
	}
	
	@PostMapping("/saveMenu")
	public String saveRestaurant(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @ModelAttribute("restoID") int theID,@ModelAttribute("menuku") Menu theMenu,Model resolveModel) {
		if(!kue.equals("admin"))
			return "/admin/login";
		Restoran resto = restoranService.getRestoranByID(theID);
		
		theMenu.setRestoran(resto);
		
		menuService.saveMenu(theMenu);
		
		resolveModel.addAttribute("restoranID", theID);
		
		return "redirect:/admin/managemenu";
	}
	
	@GetMapping("/deleterestaurant")
	public String deleteRestaurant(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @ModelAttribute("restoranID")int theID) {
		if(!kue.equals("admin"))
			return "/admin/login";
		restoranService.deleteRestoran(theID);
		
		return "redirect:/admin/managerestaurant";
	}
	
	@GetMapping("/deleteMenu")
	public String deleteMenu(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @ModelAttribute("menuID")int theID,@ModelAttribute("restoID")int restoID,Model model) {
		if(!kue.equals("admin"))
			return "/admin/login";
		menuService.deleteMenu(theID);
		
		model.addAttribute("restoranID",restoID);
		
		return "redirect:/admin/managemenu";
	}
	
	@GetMapping("/showFormForAddTag")
	public String addTag(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, Model theModel){
		if(!kue.equals("admin"))
			return "/admin/login";
		Tag tag = new Tag();
		
		theModel.addAttribute("tagku", tag);
		
		return "/admin/tag_form";
	}
	
	@PostMapping("/saveTag")
	public String saveTag(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @ModelAttribute("tagku") Tag tag) {
		if(!kue.equals("admin"))
			return "/admin/login";
		tagService.saveTag(tag);
		
		return "redirect:/admin/managetag";
	}
	
	@GetMapping("/editRestoTag")
	public String editRestoTag(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @ModelAttribute("restoranID")int restoID,Model myModel) {
		if(!kue.equals("admin"))
			return "/admin/login";
		Restoran resto = restoranService.getRestoranByID(restoID);
		
		List <Tag> tagku = tagService.getTagIn(restoID);
		
		myModel.addAttribute("restoku", resto);
		myModel.addAttribute("tagIn", tagku);
		
		return "/admin/edit_tag";
	}
	
	@GetMapping("/addRestoTag")
	public String addRestoTag(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @ModelAttribute("restoID")int theResID,@ModelAttribute("tagID")int theTagID,Model model) {
		if(!kue.equals("admin"))
			return "/admin/login";
		Restoran resto = restoranService.getRestoranByID(theResID);
		Tag tag = tagService.getTagByID(theTagID);
		
		resto.addTag(tag);
		
		restoranService.saveRestoran(resto);
		
		model.addAttribute("restoranID", theResID);
		
		return "redirect:/admin/editRestoTag";
	}
	
	@GetMapping("/deleteTag")
	public String deleteTag(@CookieValue(value = "priv", defaultValue = "nonadmin") String kue, @ModelAttribute("tagID")int tagID) {
		if(!kue.equals("admin"))
			return "/admin/login";
		tagService.deleteTag(tagID);
		
		return "redirect:/admin/managetag";
	}
}
