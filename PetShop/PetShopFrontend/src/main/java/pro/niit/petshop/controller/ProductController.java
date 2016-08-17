package pro.niit.petshop.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pro.niit.petshop.dao.CategoryDAO;
import pro.niit.petshop.dao.ProductDAO;
import pro.niit.petshop.handler.FileHandler;
import pro.niit.petshop.model.CategoryDetails;
import pro.niit.petshop.model.ProductDetails;

@Controller
public class ProductController {

	String path = "F:\\Deepk\\Project_Petshop\\PetShopFrontend\\src\\main\\webapp\\assets\\images\\products\\";

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private ProductDetails productDetails;

	@Autowired
	private CategoryDAO categoryDAO;

	@Autowired
	private CategoryDetails categoryDetails;

	@RequestMapping(value = "/gomanageproducts", method = RequestMethod.GET)
	public ModelAndView gomanageproducts() {
		ModelAndView modelAndView = new ModelAndView("manageproducts");
		modelAndView.addObject("productDetails", productDetails);
		modelAndView.addObject("productList", this.productDAO.list());
		modelAndView.addObject("categoryList", this.categoryDAO.list());

		return modelAndView;
	}

	@RequestMapping(value = "/addproduct", method = RequestMethod.POST)
	public ModelAndView addproducts(@Valid @ModelAttribute("productDetails") ProductDetails productDetails,
			BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();
		if (result.hasErrors()) {

			modelAndView.setViewName("manageproducts");
			modelAndView.addObject("productList", this.productDAO.list());
		} else {

			MultipartFile file = productDetails.getMultipartFile();

			FileHandler.upload(path, file, productDetails.getId() + ".jpg");
			// String location=(path+ productDetails.getId()+".jpg");
			// productDetails.setLocation(location);
			productDAO.saveOrUpdate(productDetails);
			modelAndView.setViewName("manageproducts");
			modelAndView.addObject("productList", this.productDAO.list());

		}
		return modelAndView;
	}

	@RequestMapping(value = "/product/delete/{id}")
	public ModelAndView deleteproduct(@PathVariable("id") String id) {
		productDAO.delete(id);
		ModelAndView modelAndView = new ModelAndView("manageproducts");
		// modelAndView.addObject(productDetails);
		modelAndView.addObject("productList", this.productDAO.list());
		return modelAndView;
	}

	@RequestMapping(value = "/product/edit/{id}")
	public ModelAndView editproduct(@PathVariable("id") String id) {
		ModelAndView modelAndView = new ModelAndView("manageproducts");
		productDetails = productDAO.get(id);
		modelAndView.addObject(productDetails);
		modelAndView.addObject("productList", this.productDAO.list());
		return modelAndView;

	}

}
