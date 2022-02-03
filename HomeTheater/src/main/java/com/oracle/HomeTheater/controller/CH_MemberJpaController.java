package com.oracle.HomeTheater.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	// 회원가입
	@RequestMapping(value = "joinMember")
	public String joinMember(MemberJpa member) {
		System.out.println("CH_MemberJpaController joinMember Start...");
		memberJpaService.join(member);
		return "CH_view/CH_JoinMember";
	}
}
