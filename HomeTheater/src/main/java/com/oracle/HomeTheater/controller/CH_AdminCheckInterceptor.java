package com.oracle.HomeTheater.controller;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CH_AdminCheckInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse
            response, Object handler) throws Exception {
        System.out.println("CH_AdaminCheckInterceptor Start...");
    	HttpSession session = request.getSession();
    	String id = (String)session.getAttribute("sessionId");
    	
    	if(!id.equals("admin")) { 		
    		response.sendRedirect("main");
    		return false;
    	}
        return true;
    }
}