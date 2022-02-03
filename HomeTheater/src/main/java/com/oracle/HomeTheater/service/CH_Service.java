package com.oracle.HomeTheater.service;

import java.util.List;

import com.oracle.HomeTheater.model.Bbs;
import com.oracle.HomeTheater.model.Movie;
import com.oracle.HomeTheater.model.Payment;

public interface CH_Service {

	List<Movie> SearchMovieList(Movie movie);
	List<Bbs> SearchBbsList(Bbs bbs);
	List<Payment> Payments(Payment payment);


}
