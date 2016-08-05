package org.niit.dbconnect.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@RequestMapping(value = { "/", "/home" })
	public ModelAndView golanding() {
		ModelAndView modelAndView = new ModelAndView("landing");
		return modelAndView;
	}

	
	 @RequestMapping("/adminhome") 
	 public ModelAndView goadminhome() {
	 ModelAndView modelAndView = new ModelAndView("adminhome"); 
	 return	 modelAndView; 
	 }
	

}
