package com.oracle.HomeTheater.model;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Movie {
	private int    mo_number;
	private String mo_title;
	private String mo_director;
	private String mo_actor;
	private String mo_genre;
	private String mo_age;
	private String mo_playTime;
	private String mo_openDate;
	private int recommendation;
	private String fileName;
	
	//조회용
	private int start;			private int end;
}
