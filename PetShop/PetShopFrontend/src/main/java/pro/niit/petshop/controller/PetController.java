package pro.niit.petshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pro.niit.petshop.dao.ProductDAO;
import pro.niit.petshop.model.ProductDetails;

@Controller
public class PetController {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private ProductDetails productDetails;
	
	
	
	@RequestMapping("/goviewpets")
	public ModelAndView goviewpets() {
		ModelAndView modelAndView = new ModelAndView("pets");
		modelAndView.addObject("productList",this.productDAO.list());
		return modelAndView;
	}
}
