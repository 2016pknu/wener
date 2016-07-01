package com.wener.auth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wener.auth.service.AuthService;

@Controller
public class AuthController {
	
	@Autowired
	AuthService authService;
	
	

}
