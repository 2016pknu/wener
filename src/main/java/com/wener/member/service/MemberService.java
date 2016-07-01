package com.wener.member.service;

import javax.servlet.http.HttpServletResponse;

import com.wener.member.dto.MemberDto;

public interface MemberService {

	void signUp(MemberDto member);
	void joinIdCheck(String inputId, HttpServletResponse resp);
	int login(MemberDto member);

}
