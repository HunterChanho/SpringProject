package com.oracle.HomeTheater.dao;

import java.util.List;

import com.oracle.HomeTheater.model.Member;
import com.oracle.HomeTheater.domain.MemberJpa;
import com.oracle.HomeTheater.model.Actor;
import com.oracle.HomeTheater.model.Bbs;
import com.oracle.HomeTheater.model.ChoiceMovie;
import com.oracle.HomeTheater.model.Movie;
import com.oracle.HomeTheater.model.Reservation;
import com.oracle.HomeTheater.model.SeatandTime;


public interface CH_Dao {

	List<Movie> SearchMovieList(Movie movie);
	List<Bbs> SearchBbsList(Bbs bbs);
	Member searchUserInfo(String m_id);
	int memberUpdate(Member member);
	int memberDelete(String m_id);
	int idCheck(String m_id);
	String checkEmail_Pw(String m_id);
	int tempPasswrodUpdate(Member member);
	int phoneCheck(String m_phonenumber);
	String checkEmail_Id(String m_phonenumber);
	String findName(String m_phonenumber);
	String findId(String m_phonenumber);
	int memberPwUpdate(Member member);
	List<ChoiceMovie> getMoNumList(ChoiceMovie choice);
	List<Movie> InterestMovieList(Movie movie);
	List<Reservation> checkReservationInfo(Reservation reservation);
	List<SeatandTime> searchSeatInfo(SeatandTime seatTime);
	List<Member> memberList(Member member);
	int adminUpdateMember(Member member);
	List<Reservation> reservationList(Reservation reservation);
	int adminUpdateReservation(Reservation reservation);
	List<Bbs> mainBbsList(Bbs bbs);
	List<Bbs> bbsSearchTotal(Bbs bbs);
	List<Bbs> bbsSearchTitle(Bbs bbs);
	List<Bbs> bbsSearchContent(Bbs bbs);
	List<Bbs> bbsSearchId(Bbs bbs);
	String delchk(String m_id);
	int adminRestorationMember(String m_id);
	List<Actor> actorList(int mo_number);


}
