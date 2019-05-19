package com.its.fppbkk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.its.fppbkk.entity.Restoran;
import com.its.fppbkk.service.RestoranService;

@Controller
@RequestMapping("/restoran")
public class RestoranController {
	
	@Autowired
	private RestoranService restoranService;
	
	@GetMapping("/listall")
	public String getAll(Model myModel) {
		
		List<Restoran> resto = restoranService.getRestoran();
		
		myModel.addAttribute("resto",resto);
		
		return "restoran/listall";
	}

}
