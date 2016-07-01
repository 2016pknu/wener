package com.wener.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wener.member.dto.MemberDto;
import com.wener.member.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	//회원가입(GET)
	@RequestMapping(value="/signup.member", method=RequestMethod.GET)
	public String signup(){
		
		return "signup";
	}
	//회원가입(POST)
	@RequestMapping(value="/signup.member", method=RequestMethod.POST)
	public String signupRegister(MemberDto member){
		
		memberService.signUp(member);
		
		return "index";
	}
	//회원가입시 중복아이디 검사
	@RequestMapping("joinCheckId.member")
	public void joinIdCheck(String inputId, HttpServletResponse resp){
		
		memberService.joinIdCheck(inputId,resp);
	}
	
	//로그인(GET)
	@RequestMapping(value="/login.member", method=RequestMethod.GET)
	public String loginForm(){
		
		return "login";
	}
	//로그인(POST)
	@RequestMapping(value="/login.member", method=RequestMethod.POST)
	public String login(MemberDto member, HttpServletRequest req){
		
		int result = memberService.login(member);
		
		if(result == 1){
			req.getSession().setAttribute("id", member.getId());
			
			//로그인
			if(req.getParameter("loginPath")==""){
				return"redirect:/index.main";
			}
//			else if(req.getParameter("loginPath").equals("ok")){//글쓰기버튼을 통해 로그인 할 경우
//				mav.setViewName("redirect:/writeForm.bbs");
//				
//			}
//			else{
//				System.out.println("loginPath 오류!!!!!");
//				return"redirect:/index.main";
//			}
		}
		else if(result == 2){
			System.out.println("비밀번호 오류");
			return"redirect:/index.main";
		}
		else{
			System.out.println("가입되지 않은 회원");
			return"redirect:/index.main";
		}
		return"redirect:/index.main";
	}
	
	//로그아웃
	@RequestMapping("/logout.member")
	public String logout(HttpServletRequest req){
		req.getSession().setAttribute("id", null);
		return "redirect:/index.main";
	}
	
	//비밀번호 찾기
	@RequestMapping("/forgot_password.member")
	public String forgot(){
		return "forgot_password";
	}
}
