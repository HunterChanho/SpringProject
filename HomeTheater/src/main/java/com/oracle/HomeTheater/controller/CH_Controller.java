package com.oracle.HomeTheater.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
	
//	@GetMapping(value = "SearchMovieList")
//	public String SearchMovieList(String mo_title, Model model) {
//		System.out.println("CH_Controller SearchMovieList Start...");
//		Movie movie = cs.SearchMovieList(mo_title);
//		model.addAttribute("movie",movie);
//		return "SearchMovieList";
//	}
	
	@GetMapping(value = "SearchMovieList")
	public String SearchMovieList(Movie movie, Model model) {
		List<Movie> SearchMovieList = cs.SearchMovieList(movie);
		model.addAttribute("SearchMovieList",SearchMovieList);
		return "SearchMovieList";
	}
	
}
