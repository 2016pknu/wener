package com.wener.member.service;

import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.wener.member.dto.MemberDto;

public interface MemberService {

	void signUp(MemberDto member);
	void joinIdCheck(String inputId, HttpServletResponse resp);
	int login(MemberDto member);
	ModelAndView getProfile(String id);
	void updateProfile(MemberDto member, MultipartHttpServletRequest mReq);

}
