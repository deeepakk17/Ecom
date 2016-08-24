package pro.niit.petshop.controller;

import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import pro.niit.petshop.model.UserDetails;

@Controller
public class UserController {

		
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView modelAndView = new ModelAndView();
		if (error != null) {
			modelAndView.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			SecurityContextHolder.getContext().setAuthentication(null);
			modelAndView.addObject("msg", "You've been logged out successfully.");
		}
		modelAndView.setViewName("login");

		return modelAndView;

	}
	
	@RequestMapping(value =  "/home" )
	public ModelAndView gohomepage() {
		ModelAndView mv = new ModelAndView("homepage");
		return mv;
	}
	
	//for 403 access denied page
		@RequestMapping(value = "/403", method = RequestMethod.GET)
		public ModelAndView accessDenied() {

			ModelAndView model = new ModelAndView();
			
			//check if user is login
			Authentication auth = SecurityContextHolder.getContext().getAuthentication();
			if (!(auth instanceof AnonymousAuthenticationToken)) {
				UserDetails userDetail = (UserDetails) auth.getPrincipal();
				System.out.println(userDetail);
			
				model.addObject("username", userDetail.getUsername());
				
			}			
			model.setViewName("403");
			return model;

		}
	
		

	/*@RequestMapping(value = "/register", method = RequestMethod.POST)
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

	}*/

	/*@RequestMapping(value = "/login", method = RequestMethod.POST)
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
*/
	/*@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView userlogoutpage(HttpSession httpSession) {
		SecurityContextHolder.getContext().setAuthentication(null);
		httpSession.setAttribute("pageContext.request.userPrincipal.name", null);
		
		ModelAndView modelAndView = new ModelAndView("landing");
		return modelAndView;
	}*/
	
	
	
}
