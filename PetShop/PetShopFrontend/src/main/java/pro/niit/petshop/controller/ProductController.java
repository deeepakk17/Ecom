package pro.niit.petshop.controller;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pro.niit.petshop.dao.CategoryDAO;
import pro.niit.petshop.dao.ProductDAO;
import pro.niit.petshop.model.FileUpload;
import pro.niit.petshop.model.ProductDetails;




@Controller
public class ProductController {
	
	
	
	String path = "F:\\Deepk\\dbimage";
	
	private static final Logger logger = LoggerFactory
			.getLogger(FileUploadController.class);
	
	
	
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private ProductDetails productDetails;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	
			
	@RequestMapping("/gomanageproducts")
	public ModelAndView gomanageproducts() {
		ModelAndView modelAndView = new ModelAndView("manageproducts");
		modelAndView.addObject("productDetails", productDetails);
		modelAndView.addObject("productList",this.productDAO.list());
		
		return modelAndView;
	}
	
	@RequestMapping(value ="/addproductpage",method=RequestMethod.GET)
	public ModelAndView goaddproducts() {
		ModelAndView modelAndView = new ModelAndView("addproduct");
		modelAndView.addObject("productDetails", productDetails);
		modelAndView.addObject("productList",this.productDAO.list());
		modelAndView.addObject("categoryList",this.categoryDAO.list());
		
		
		return modelAndView;	
	}
	
	
	
	@RequestMapping(value ="/addproduct",method=RequestMethod.POST)
	public ModelAndView addproducts(@Valid @ModelAttribute("productDetails") ProductDetails productDetails, BindingResult result) {
		ModelAndView modelAndView = new ModelAndView();
		if(result.hasErrors()) {
			
			modelAndView.setViewName( "addproduct") ;
		}
		else {
		productDAO.saveOrUpdate(productDetails);	
		MultipartFile file=productDetails.getMultipartFile();
		FileUpload.upload(path, file, productDetails.getId()+".jpg");
		modelAndView.addObject("file",file);
		modelAndView.setViewName("manageproducts");
		modelAndView.addObject("productDetails", productDetails);
		modelAndView.addObject("productList",this.productDAO.list());
		}
		
		return modelAndView;	
	}
	
	
	@RequestMapping(value ="product/delete/{id}")
	public String deleteproduct(@PathVariable("id") String id, ModelMap model) {
		productDAO.delete(id);
		model.addAttribute("productDetails", productDetails);
		model.addAttribute("productList",this.productDAO.list());
		return "manageproducts";
	}
	
	@RequestMapping(value ="product/edit/{id}")
	public String editproduct(@PathVariable("id") String id, Model model) {
		productDetails = productDAO.get(id);
		model.addAttribute("productDetails", productDetails);
		model.addAttribute("productList",this.productDAO.list());
		return "manageproducts";
	
	}
	
/*	@RequestMapping(value ="/listproduct",method=RequestMethod.GET)
	public ModelAndView listallproduct() {
		
		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		productDAO.list();
		ModelAndView modelAndView = new ModelAndView("viewproduct");
		modelAndView.addAllObjects(Map<String p>,list);
		return modelAndView;
			
		} */
		
		
	}


