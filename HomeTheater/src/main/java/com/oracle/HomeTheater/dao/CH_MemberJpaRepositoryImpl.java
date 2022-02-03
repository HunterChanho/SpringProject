package com.oracle.HomeTheater.dao;

import javax.persistence.EntityManager;

import org.springframework.stereotype.Repository;

import com.oracle.HomeTheater.domain.MemberJpa;

@Repository
public class CH_MemberJpaRepositoryImpl implements CH_MemberJpaRepository {

	private final EntityManager em;
    
	public CH_MemberJpaRepositoryImpl(EntityManager em) {
	    	this.em = em;
	}

	@Override
	public MemberJpa save(MemberJpa member) {
		em.persist(member);
		return member;
	}
}
