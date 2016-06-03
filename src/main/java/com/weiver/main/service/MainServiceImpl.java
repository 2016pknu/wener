package com.weiver.main.service;

import org.springframework.stereotype.Service;

@Service
public class MainServiceImpl implements MainService {

	@Override
	public String test(String jsp) {
		jsp = "main";
		return jsp;
	}

}
