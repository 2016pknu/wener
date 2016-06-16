package com.wener.auth.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.wener.auth.service.AuthService;

@Controller
public class AuthController {
	
	@Autowired
	AuthService authService;

}
