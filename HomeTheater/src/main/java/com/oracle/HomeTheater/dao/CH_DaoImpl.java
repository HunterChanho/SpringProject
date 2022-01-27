package com.oracle.HomeTheater.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.oracle.HomeTheater.model.Movie;

@Repository
public class CH_DaoImpl implements CH_Dao {
	@Autowired
	private SqlSession session;

	@Override
	public int total() {
		int tot= 0;
		System.out.println("CH_DaoImpl Start total..Start...");

		//Reult =>14
		try {
			tot = session.selectOne("tkEmpTotal");	
			System.out.println("CH_DaoImpl total tot->"+tot);
		} catch (Exception e) {
			System.out.println("CH_DaoImpl total Exception->"+e.getMessage());
		}
		return tot;
	}


//	@Override
//	public Movie SearchMovieList(String mo_title) {
//		Movie movie = new Movie();
//		System.out.println("CH_DaoImpl SearchMovieList Start...");
//		try {
//			movie = session.selectOne("CH_SearchMovieList", mo_title);
//			System.out.println("title="+movie.getMo_title());
//			System.out.println("director="+movie.getMo_director());
//		} catch (Exception e) {
//			System.out.println("CH_DaoImpl SearchMovieList Excetption->"+e.getMessage());
//		}
//		return movie;
//	}

	@Override
	public List<Movie> SearchMovieList(Movie movie) {
		List<Movie> SearchMovieList = null;
		try {
			SearchMovieList = session.selectList("CH_SearchMovieList", movie);
		} catch (Exception e) {
			System.out.println("CH_DaoImpl SearchMovieList Excetption->"+e.getMessage());
		}
		return SearchMovieList;
	}
	


	
}
