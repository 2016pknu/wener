package com.wener.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.wener.member.dao.MemberDao;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDao memberdao;
	
	@Override
	public void signup(String id, String password, String email) {
		
		
		
	}
	
}
