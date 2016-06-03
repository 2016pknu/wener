package com.weiver.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.weiver.main.service.MainService;

@Controller
public class MainController {
	
	@Autowired
	MainService mainService;
	
	@RequestMapping("/main.main")
	public String main(){
		
		String jsp = "";
		jsp = mainService.test(jsp);
		return jsp;
	}
}
