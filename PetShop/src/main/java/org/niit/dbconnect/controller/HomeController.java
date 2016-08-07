package org.niit.dbconnect.controller;

import org.niit.dbconnect.dao.ProductDAO;
import org.niit.dbconnect.model.ProductTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private ProductTable productTable;
	

	@RequestMapping(value = { "/", "/home" })
	public ModelAndView golanding() {
		ModelAndView modelAndView = new ModelAndView("landing");
		modelAndView.addObject("productTable", productTable);
		modelAndView.addObject("productList",this.productDAO.list());
		return modelAndView;
	}

	
	 @RequestMapping("/adminhome") 
	 public ModelAndView goadminhome() {
	 ModelAndView modelAndView = new ModelAndView("adminhome"); 
	 return	 modelAndView; 
	 }
	

}
