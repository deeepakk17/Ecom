package org.niit.dbconnect.controller;

import org.niit.dbconnect.dao.CategoryDAO;
import org.niit.dbconnect.model.CategoryTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoryController {

	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

	@Autowired
	private CategoryTable categoryTable;

	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping(value = "/gomanagecategories")
	public ModelAndView gomanagecategory() {
		ModelAndView modelAndView = new ModelAndView("managecategory");

		return modelAndView;
	}

	@RequestMapping(value = "/addcategorypage", method = RequestMethod.GET)
	public ModelAndView goaddcategory() {
		ModelAndView modelAndView = new ModelAndView("addcategory");
		modelAndView.addObject("categoryTable", categoryTable);
		return modelAndView;
	}

	@RequestMapping(value = "/addcategory", method = RequestMethod.POST)
	public ModelAndView addcategory(@ModelAttribute CategoryTable categoryTable) {
		categoryDAO.saveOrUpdate(categoryTable);

		ModelAndView modelAndView = new ModelAndView("managecategory");
		modelAndView.addObject("successmessage", "Category Added Successfully");
		return modelAndView;
	}

	@RequestMapping(value ="/listcategorypage",method=RequestMethod.GET)
	public String golistcategory(Model model) {
		model.addAttribute("categoryTable", categoryTable);
		model.addAttribute("categoryList",this.categoryDAO.list());
		return "viewcategory";	
	}

	@RequestMapping(value ="category/delete/{id}")
	public String deletecategory(@PathVariable("id") String id, ModelMap model) {
		categoryDAO.delete(id);
		model.addAttribute("categoryTable", categoryTable);
		model.addAttribute("categoryList",this.categoryDAO.list());
		return "viewcategory";
	}
	
	@RequestMapping(value ="category/edit/{id}")
	public String editcategory(@PathVariable("id") String id, Model model) {
		categoryTable = categoryDAO.get(id);
		model.addAttribute("categoryTable", categoryTable);
		model.addAttribute("categoryList",this.categoryDAO.list());
		return "addcategory";
	}
	
	
}
