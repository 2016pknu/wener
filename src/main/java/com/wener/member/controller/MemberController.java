package com.wener.member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wener.member.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	@RequestMapping(value="/signup.member", method=RequestMethod.GET)
	public String signup(){
		
		return "signup";
	}
	
	@RequestMapping(value="/signup.member", method=RequestMethod.POST)
	public String signupRegister(String id, String email, String password){
		System.out.println(id + email + password);
		memberService.signup(id,password,email);
		
		
		return "index";
	}
}
