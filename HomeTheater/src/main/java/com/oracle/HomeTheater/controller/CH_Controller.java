package com.oracle.HomeTheater.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.HomeTheater.model.Bbs;
import com.oracle.HomeTheater.model.Movie;
import com.oracle.HomeTheater.service.CH_Service;

@Controller
public class CH_Controller {
	@Autowired
	private CH_Service cs;
	
	@RequestMapping(value = "main")
	public String main() {
		System.out.println("CH_Contorller main Start...");
		return "main";
	}
	
	// 영화 검색
	@GetMapping(value = "SearchMovieList")
	public String SearchMovieList(Movie movie, Model model) {
		System.out.println("CH_Controller SearchMovieList Start...");
		List<Movie> SearchMovieList = cs.SearchMovieList(movie);
		model.addAttribute("SearchMovieList",SearchMovieList);
		return "CH_SearchTotalList";
	}
	
	// 게시판 검색
	@GetMapping(value = "SearchBbsList")
	public String SearchBbsList(Bbs bbs, Model model) {
		System.out.println("CH_Contoller SearchBbsList Start...");
		List<Bbs> SearchBbsList = cs.SearchBbsList(bbs);
		model.addAttribute("SearchBbsList", SearchBbsList);
		return "CH_SearchTotalList";
	}
	
	
}
