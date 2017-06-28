package com.property.mgt.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.support.RequestContextUtils;

@Controller
public class HomeController {

	@RequestMapping({"/","/welcome"})
	public String welcome(HttpServletRequest request,HttpServletResponse response, Locale locale) {
		// Her's how to Manually set Locale
	//	RequestContextUtils.getLocaleResolver(request).setLocale(request, response, Locale.ENGLISH);
		
		

  		System.out.println("WELCOME AGAIN ");

		return "welcome";
	}
	
	
}
