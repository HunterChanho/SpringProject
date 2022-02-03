package com.oracle.HomeTheater.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oracle.HomeTheater.dao.CH_MemberJpaRepository;
import com.oracle.HomeTheater.domain.MemberJpa;

@Transactional
@Service
public class CH_MemberJpaService {
	private final CH_MemberJpaRepository memberJpaRepository;
    
	public CH_MemberJpaService(CH_MemberJpaRepository memberJpaRepository) {
		this.memberJpaRepository = memberJpaRepository;
	}

	// 회원가입
	public String join(MemberJpa member) {
		System.out.println("CH_MemberJpaService join member.getM_id()->"+member.getM_id());
		memberJpaRepository.save(member);
		return member.getM_id();
		
	}
	
}
