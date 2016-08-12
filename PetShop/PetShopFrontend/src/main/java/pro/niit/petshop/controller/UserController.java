package pro.niit.petshop.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pro.niit.petshop.dao.UserDAO;
import pro.niit.petshop.model.UserDetails;

@Controller
public class UserController {

	@Autowired
	private UserDetails userDetails;

	@Autowired
	private UserDAO userDAO;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView userloginpage() {
		ModelAndView modelAndView = new ModelAndView("login");
		modelAndView.addObject("isUserClickedLoginHere", true);
		return modelAndView;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView userregisterpage() {
		ModelAndView modelAndView = new ModelAndView("signup");
		modelAndView.addObject("isUserClickedRegistereHere", true);
		modelAndView.addObject("userDetails", userDetails);
		return modelAndView;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView userregister(@Valid @ModelAttribute UserDetails userDetails, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();
		if (result.hasErrors()) {
			modelAndView.setViewName("signup");

		} else {
			userDAO.saveOrUpdate(userDetails);
			modelAndView.setViewName("home");
			modelAndView.addObject("successmessage", "You are Registered Successfully");

		}
		return modelAndView;

	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public ModelAndView userlogin(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession httpSession) {

		UserDetails userDetails = new UserDetails();
		userDetails.setUsername(username);
		userDetails.setPassword(password);
		boolean isvaliduser = userDAO.checkUser(userDetails);

		if (isvaliduser == true) {
			boolean isadmin = userDAO.isAdmin(userDetails);
			httpSession.setAttribute("loggedInUser", userDetails.getUsername());
			if (isadmin == true) {
				ModelAndView modelAndView = new ModelAndView("adminhome");
				modelAndView.addObject("message", "hello welcome");
				modelAndView.addObject("name", userDetails.getUsername());
				return modelAndView;
			} else {
				System.out.println("n lgn");
				ModelAndView modelAndView = new ModelAndView("home");
				modelAndView.addObject("message", "hello welcome");
				modelAndView.addObject("name", userDetails.getUsername());
				return modelAndView;

			}

		} else {
			ModelAndView modelAndView = new ModelAndView("login");
			modelAndView.addObject("message", "Invalid Credentials");
			return modelAndView;
		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView userlogoutpage(HttpSession httpSession) {
		httpSession.setAttribute("loggedInUser", null);
		ModelAndView modelAndView = new ModelAndView("landing");
		return modelAndView;
	}

}
