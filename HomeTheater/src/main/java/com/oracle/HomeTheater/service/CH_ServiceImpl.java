package com.oracle.HomeTheater.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oracle.HomeTheater.dao.CH_Dao;
import com.oracle.HomeTheater.model.Movie;

@Service
public class CH_ServiceImpl implements CH_Service {
	@Autowired
	private CH_Dao cd;


	@Override
	public int total() {
		System.out.println("CH_ServiceImpl Start total...");
		int totCnt = cd.total();
		System.out.println("CH_ServiceImpl total totCnt->"+totCnt);
		return totCnt;
	}

	@Override
	public List<Movie> SearchMovieList(Movie movie) {
		List<Movie> SearchMovieList = null;
		System.out.println("CH_ServiceImpl SearchMovieList Start...");
		SearchMovieList = cd.SearchMovieList(movie);
		System.out.println("CH_ServiceImpl SearchMovieList.size()->"+SearchMovieList.size());
		return SearchMovieList;
	}
	
	

}
