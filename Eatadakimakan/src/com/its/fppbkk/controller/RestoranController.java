package com.its.fppbkk.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.its.fppbkk.entity.Menu;
import com.its.fppbkk.entity.Restoran;
import com.its.fppbkk.entity.Tag;
import com.its.fppbkk.service.MenuService;
import com.its.fppbkk.service.RestoranService;

@Controller
@RequestMapping("/restoran")
public class RestoranController {
	
	@Autowired
	private RestoranService restoranService;
	
	@Autowired
	private MenuService menuService;
	
	
	@GetMapping("/")
	public String base() {
		return "redirect:/restoran/random";
	}
	
	@GetMapping("/listall")
	public String getAll(Model myModel) {
		
		List<Restoran> resto = restoranService.getRestoran();
		
		myModel.addAttribute("resto",resto);
		
		return "restoran/listall";
	}
	
	@GetMapping("/random")
	public String getRandom(Model myModel) {
		
		List<Restoran> resto = restoranService.getRestoran();
		Random rand = new Random();
				
		if(resto.size() > 0)
		{
			Restoran restorandom = resto.get(rand.nextInt(resto.size()));
			return getDetails(myModel, restorandom.getId());
		}
		else
			return "/";
	}
	@GetMapping("/searchrandom")
	public String getSearchRandom(HttpServletRequest request, Model myModel) {
		String budget = request.getParameter("budget");
		String location = request.getParameter("location");
		List<Restoran> resto= restoranService.getRestoranByBudget(Integer.parseInt(budget), location);
		Random rand = new Random();
		if(resto.size() > 0)
		{
			Restoran restorandom = resto.get(rand.nextInt(resto.size()));
			return getDetails(myModel, restorandom.getId());
		}
		else
			return "restoran/searchrestaurantform";
		
		
		
		
		
	}
	@GetMapping("/{id}")
	public String getDetails(Model myModel, @PathVariable int id) {
		
		int restoID = id;
		
		Restoran restoku = restoranService.getRestoranByID(restoID);
		List<Menu> menuku = menuService.getMenuRestoran(restoID);
		List<Tag> tagku = restoranService.getTagRestoran(restoID);
		myModel.addAttribute("resto", restoku);
		myModel.addAttribute("menuku", menuku);
		myModel.addAttribute("tagku", tagku);
		
		return "restoran/restaurantinfo";
	}
	@RequestMapping("/searchrestauranform")
	public String search_resto_form() {
		return "restoran/searchrestaurantform";
	}
	@RequestMapping(value = "/searchresult", method=RequestMethod.POST, params="submit")
	public String search_result(HttpServletRequest request, Model model) {
		String budget = request.getParameter("budget");
		String location = request.getParameter("location");
		List<Restoran> resto= restoranService.getRestoranByBudget(Integer.parseInt(budget), location);
		model.addAttribute("resto",resto);
		return "restoran/searchresult";
		
	}
	@RequestMapping(value = "/searchresult", method=RequestMethod.POST, params="random")
	public String randomsearch(HttpServletRequest request, Model model)
	{
		
		return getSearchRandom(request, model);
	}

}
