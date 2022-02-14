package com.oracle.HomeTheater.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.HomeTheater.domain.MemberJpa;
import com.oracle.HomeTheater.service.CH_MemberJpaService;

@Controller
public class CH_MemberJpaController {
	private final CH_MemberJpaService memberJpaService;
	
	@Autowired
	public CH_MemberJpaController(CH_MemberJpaService memberJpaService) {
		this.memberJpaService = memberJpaService;
	}
	

	// 회원가입 폼 
	@GetMapping(value="joinMember")
	public String joinUserForm() {
		System.out.println("CH_MemberJpaController joinUserForm Start...");
		return "CH_view/CH_JoinMember";
	}
	
	// 회원가입
	@RequestMapping(value = "joinMember/save")
	public String joinUser(MemberJpa member) {
		System.out.println("CH_MemberJpaController joinMember/save Start...");
		memberJpaService.joinUser(member);
		return "redirect:/loginForm";
	}
	
	// 로그인 폼
	@GetMapping(value="loginForm")
	public String loginForm() {
		System.out.println("CH_MemberJpaController loginForm Start...");
		return "CH_view/CH_Login";
	}

	// 로그인
	@RequestMapping(value = "login")
	public String login(MemberJpa member, Model model) {
		System.out.println("member = "+ member);
		MemberJpa memberVO = memberJpaService.loginUser(member.getM_id(), member.getM_password());
		
		if(memberVO == null) {
			
			model.addAttribute("loginMessage","아이디 혹은 비밀번호가 틀립니다.");
			return "redirect:/loginForm";
		}
		model.addAttribute("userName",memberVO.getM_name());
		return "main";
	}
	
	
	// 로그아웃
	@RequestMapping(value = "logout")
	public String logout(HttpServletRequest request) {
		System.out.println("CH_Controller logout Start...");
		HttpSession session = request.getSession();
		session.invalidate();
		return "CH_view/CH_Login";
	}

	
}