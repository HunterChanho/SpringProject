package com.oracle.HomeTheater.configuration;

import com.oracle.HomeTheater.controller.CH_AdminCheckInterceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class CH_WebConfig implements WebMvcConfigurer {
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new CH_AdminCheckInterceptor())
                .addPathPatterns("/reservationList", "/memberList");
    }   
}