package pro.niit.petshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping(value = { "/", "/home" })
	public ModelAndView golanding() {
		ModelAndView mv = new ModelAndView("landing");
		return mv;
	}

	 @RequestMapping("/adminhome") 
	 public ModelAndView goadminhome() {
	 ModelAndView modelAndView = new ModelAndView("adminhome"); 
	 return	 modelAndView; 
	 }
	 
	 @RequestMapping("/error") 
	 public ModelAndView goerrorpage() {
	 ModelAndView modelAndView = new ModelAndView("404"); 
	 return	 modelAndView; 
	 }
	
}
