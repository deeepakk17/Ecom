package pro.niit.petshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import pro.niit.petshop.dao.CategoryDAO;
import pro.niit.petshop.dao.ProductDAO;
import pro.niit.petshop.model.ProductDetails;

@Controller
public class PetController {

	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private ProductDetails productDetails;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	/*@RequestMapping("/goviewpetsss")
	public ModelAndView goviewpetss() {
		ModelAndView modelAndView = new ModelAndView("viewall");
		List<ProductDetails> productlist =  productDAO.list();
		Gson gson=new Gson();
		String item=gson.toJson(productlist);
		modelAndView.addObject(item);
		return modelAndView;
	}*/
	
	@RequestMapping("/goview")
	public ModelAndView noangular() {
		ModelAndView modelAndView = new ModelAndView("pets");
		modelAndView.addObject("productList",this.productDAO.list());
		return modelAndView;
	}
	
	@RequestMapping(value = "product/view/{id}")
	public ModelAndView viewProduct(@PathVariable("id") String id) {
		ModelAndView modelAndView = new ModelAndView("view");
		productDetails = productDAO.get(id);
		modelAndView.addObject(productDetails);
		modelAndView.addObject("productList", this.productDAO.list());
		modelAndView.addObject("categoryList", this.categoryDAO.list());
		return modelAndView;

	}
	
	@RequestMapping(value = "product/deleteitem/{id}")
	public ModelAndView deleteProduct(@PathVariable("id") String id) {
		ModelAndView modelAndView = new ModelAndView("pets");
		productDAO.delete(id);
		
		modelAndView.addObject("productList", this.productDAO.list());
		modelAndView.addObject("categoryList", this.categoryDAO.list());
		return modelAndView;
	}
}
