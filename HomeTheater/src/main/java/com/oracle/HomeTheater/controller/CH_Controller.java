package com.oracle.HomeTheater.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.HomeTheater.model.Movie;
import com.oracle.HomeTheater.service.CH_Service;
import com.oracle.HomeTheater.service.Paging;

@Controller
public class CH_Controller {
	@Autowired
	private CH_Service cs;
	
	@RequestMapping(value = "main")
	public String main() {
		System.out.println("CH_Contorller main Start...");
		return "main";
	}
	
	@RequestMapping(value="SearchMovieList")
	public String list(Movie movie, Model model) {
		System.out.println("CH_Contorller Start list...");
		List<Movie> SearchMovieList = cs.SearchMovieList(movie);
		System.out.println("CH_Contorller SearchMovieList.size()=>"+SearchMovieList.size());
		model.addAttribute("SearchMovieList",SearchMovieList);
		
		return "SearchMovieList";
	}
	
}
