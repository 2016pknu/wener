package com.wener.member.service;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

import com.wener.member.util.LoginStatus;
import com.wener.member.dao.MemberDao;
import com.wener.member.dto.MemberDto;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Inject
	MemberDao memberDao;
	
	//회원가입
	@Override
	public void signUp(MemberDto member) {
		memberDao.signUp(member);
		
	}
	
	//회원가입시 중복 아이디 체크
	@Override
	public void joinIdCheck(String inputId, HttpServletResponse resp) {
		HashMap<String, String> hm = new HashMap<String, String>();
		
		String dbId = memberDao.selectId(inputId);
						
		if(dbId != null || inputId==""){
			hm.put("idUseStatus", "2");
			
		}else{
			hm.put("idUseStatus", "1");
		}
		
		JSONObject jb = new JSONObject(hm);
		
		PrintWriter pw;
		try {
			pw = resp.getWriter();
			pw.println(jb.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
	
	//로그인 체크
	@Override
	public int login(MemberDto member) {
		int result = 0;
		String DBPassword = memberDao.selectPassword(member.getId());
		
		if(DBPassword == null){
			result = LoginStatus.invalid_id;
		}
		else if(DBPassword.equals(member.getPassword())){
			result = LoginStatus.ok;
		}
		else{
			result = LoginStatus.invalid_password;
		}
		return result;
	}
	

}
