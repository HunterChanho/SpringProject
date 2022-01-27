package com.oracle.HomeTheater.dao;

import java.util.List;

import com.oracle.HomeTheater.model.Movie;

public interface CH_Dao {

	int total();

	List<Movie> SearchMovieList(Movie movie);

}
