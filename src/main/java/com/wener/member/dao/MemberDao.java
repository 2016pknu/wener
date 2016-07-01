package com.wener.member.dao;

import org.springframework.stereotype.Repository;

import com.wener.member.dto.MemberDto;

@Repository
public interface MemberDao {

	void signUp(MemberDto member);
	String selectId(String inputId);
	String selectPassword(String id);

}
