package pro.niit.petshop.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import pro.niit.petshop.dao.CategoryDAO;
import pro.niit.petshop.model.CategoryDetails;


@Controller
public class CategoryController {

	@Autowired
	private CategoryDetails categoryDetails;

	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping(value = "/gomanagecategories", method = RequestMethod.GET)
	public ModelAndView gomanagecategory() {
		ModelAndView modelAndView = new ModelAndView("managecategory");
		modelAndView.addObject(categoryDetails);
		modelAndView.addObject("categoryList", this.categoryDAO.list());

		return modelAndView;
	}

	

	@RequestMapping(value = "/addcategory", method = RequestMethod.POST)
	public ModelAndView addcategory(@Valid @ModelAttribute CategoryDetails categoryDetails, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();

		if (result.hasErrors()) {
			modelAndView.setViewName("addcategory");			
		} else {
			categoryDAO.saveOrUpdate(categoryDetails);
			modelAndView.setViewName("managecategory");
			modelAndView.addObject("successmessage","Category Added Successfully");
		}
			return modelAndView;
		
	}

	@RequestMapping(value = "/listcategorypage", method = RequestMethod.GET)
	public String golistcategory(Model model) {
		model.addAttribute("categoryDetails", categoryDetails);
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "viewcategory";
	}

	
	@RequestMapping(value = "/category/delete/{id}")
	public String deletecategory(@PathVariable("id") String id, Model model) {
		categoryDAO.delete(id);
		model.addAttribute(categoryDetails);
		model.addAttribute("categoryList", this.categoryDAO.list());
		return "viewcategory";
	}

	@RequestMapping(value = "/category/edit/{id}")
	public  ModelAndView editcategory(@PathVariable("id") String id) {
		ModelAndView modelAndView = new ModelAndView("addcategory");
		categoryDetails = categoryDAO.get(id);
		modelAndView.addObject(categoryDetails);
		
		return modelAndView;
	}

}
