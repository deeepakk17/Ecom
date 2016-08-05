package org.niit.dbconnect.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.niit.dbconnect.dao.UserDAO;
import org.niit.dbconnect.model.UserDetails;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
	
	@Autowired
	private UserDetails userDetails;
	
	@Autowired
	private UserDAO userDAO;
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView userregisterpage() {
		ModelAndView modelAndView = new ModelAndView("signup");
		modelAndView.addObject("userDetails", userDetails);
		return modelAndView;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView userregister(@ModelAttribute UserDetails userDetails ) {
		userDAO.saveOrUpdate(userDetails);
		ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject("successmessage", "You are Registered Successfully");
		return modelAndView;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView userloginpage() {
		ModelAndView modelAndView = new ModelAndView("login");
		return modelAndView;
	}
	
	@RequestMapping(value = "/chklogin", method = RequestMethod.POST)
	public ModelAndView userloginck(HttpServletRequest req) {
		String u=req.getParameter("username");
		String p=req.getParameter("password");
		if((u.equals("admin"))&&(p.equals("admin"))){
			
			ModelAndView modelAndView = new ModelAndView("adminhome");
			return modelAndView;
		}else {
			
			ModelAndView modelAndView = new ModelAndView("login");
			return modelAndView;
			
		}
		
	}
	
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView userlogin(@RequestParam("username") String username, @RequestParam("password") String password, HttpSession httpSession) {
		/*ModelAndView modelAndView = new ModelAndView("home");
		modelAndView.addObject(username);
		modelAndView.addObject(password);
		boolean isvaliduser=userDAO.checkUser();*/
		
		
		boolean isvaliduser =false;
		UserDetails userDetails=new UserDetails();
		userDetails.setUsername(username);
		userDetails.setPassword(password);
		isvaliduser =userDAO.checkUser(userDetails);
		ModelAndView modelAndView = new ModelAndView("home");
		if(isvaliduser==true)
		{
		
		modelAndView.addObject("message", "hello welcome");
		modelAndView.addObject("name", userDetails.getUsername());
		
		}
		//return mv;
				
		return modelAndView;
	}

	
}
