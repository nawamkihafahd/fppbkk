package com.its.fppbkk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
	@GetMapping("/listall")
	public String getAll(Model myModel) {
		
		List<Restoran> resto = restoranService.getRestoran();
		
		myModel.addAttribute("resto",resto);
		
		return "restoran/listall";
	}
	
	@GetMapping("/details")
	public String getDetails(Model myModel) {
		
		int restoID = 1;
		
		Restoran restoku = restoranService.getRestoranByID(restoID);
		List<Menu> menuku = menuService.getMenuRestoran(restoID);
		List<Tag> tagku = restoranService.getTagRestoran(restoID);
		myModel.addAttribute("resto", restoku);
		myModel.addAttribute("menuku", menuku);
		myModel.addAttribute("tagku", tagku);
		
		return "restoran/restaurantinfo";
	}

}
