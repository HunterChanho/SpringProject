package com.oracle.HomeTheater.service;

import java.util.List;

import com.oracle.HomeTheater.model.Movie;

public interface CH_Service {

	int total();

	List<Movie> SearchMovieList(Movie movie);

}
