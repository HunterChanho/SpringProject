package com.oracle.HomeTheater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.HomeTheater.dao.CH_Dao;
import com.oracle.HomeTheater.model.Member;
import com.oracle.HomeTheater.model.Bbs;
import com.oracle.HomeTheater.model.Movie;


@Service
public class CH_ServiceImpl implements CH_Service {
	@Autowired
	private CH_Dao cd;

	@Override
	public List<Movie> SearchMovieList(Movie movie) {
		System.out.println("CH_ServiceImpl SearchMovieList Start...");
		List<Movie> SearchMovieList = null;
		SearchMovieList = cd.SearchMovieList(movie);
		return SearchMovieList;
	}

	@Override
	public List<Bbs> SearchBbsList(Bbs bbs) {
		System.out.println("CH_ServiceImpl SearchBbsList Start...");
		List<Bbs> SearchBbsList = null;
		SearchBbsList = cd.SearchBbsList(bbs);
		return SearchBbsList;
	}

	@Override
	public List<Member> SearchMember(Member member) {
		System.out.println("CH_ServiceImpl SearchMember Start...");
		List<Member> SearchMember = null;
		SearchMember = cd.SearchMember(member);
		return SearchMember;
	}

	






		
	
	

}
