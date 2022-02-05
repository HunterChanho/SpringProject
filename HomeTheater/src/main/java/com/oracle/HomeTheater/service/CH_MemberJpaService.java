package com.oracle.HomeTheater.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.HomeTheater.dao.CH_MemberJpaRepository;
import com.oracle.HomeTheater.domain.MemberJpa;
import com.oracle.HomeTheater.model.Member;


@Transactional
@Service
public class CH_MemberJpaService {
	private final CH_MemberJpaRepository memberJpaRepository;
    
	public CH_MemberJpaService(CH_MemberJpaRepository memberJpaRepository) {
		this.memberJpaRepository = memberJpaRepository;
	}

	public void joinUser(MemberJpa member) {
		member.setRole("User");
		memberJpaRepository.save(member);
	}

	public MemberJpa loginUser(String m_id, String m_password) {
		MemberJpa memberVO = memberJpaRepository.selectUserInfo(m_id,m_password);
		return memberVO;
	}


	

	
}
