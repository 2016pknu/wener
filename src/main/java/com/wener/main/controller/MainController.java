package com.wener.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


import com.wener.main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@RequestMapping("/index.main")
	public String main(){
		
		String jsp = "";
		jsp = mainService.test(jsp);
		return jsp;
	}
	
	@RequestMapping("/contact.main")
	public String contact(){
		
		return "contact";
	}
	@RequestMapping("/about.main")
	public String about(){
		
		return "about";
	}

}
