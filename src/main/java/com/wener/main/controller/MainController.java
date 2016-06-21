package com.wener.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value="/signup.main", method=RequestMethod.GET)
	public String signup(){
		
		return "signup";
	}
	
	@RequestMapping(value="/signup.main", method=RequestMethod.POST)
	public String signupRegister(){
		
		return "index";
	}
}
