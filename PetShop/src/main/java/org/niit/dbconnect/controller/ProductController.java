package org.niit.dbconnect.controller;

import org.niit.dbconnect.dao.ProductDAO;
import org.niit.dbconnect.model.ProductTable;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class ProductController {
	
	
	
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
			
	@RequestMapping("/gomanageproducts")
	public ModelAndView gomanageproducts() {
		ModelAndView modelAndView = new ModelAndView("manageproducts");
		return modelAndView;
	}
	
	@RequestMapping(value ="/addproductpage",method=RequestMethod.GET)
	public ModelAndView goaddproducts() {
		ModelAndView modelAndView = new ModelAndView("addproduct");
		
		return modelAndView;	
	}
	
	/*@RequestMapping(value ="/addproduct",method=RequestMethod.POST)
	public ModelAndView addproducts(@ModelAttribute("addingproduct") ProductTable productTable) {
		
		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		ModelAndView modelAndView = new ModelAndView("manageproducts");
		productDAO.saveOrUpdate(productTable);		
		
		return modelAndView;	
	}
	*/
	
	
	@RequestMapping(value ="/addproduct",method=RequestMethod.POST)
	public ModelAndView addproduct(@RequestParam("productid") String productid,@RequestParam("productname") String productname, @RequestParam("productprice") int productprice,@RequestParam("productdescription") String productdescription) {
		
		
		context.scan("org.niit.dbconnect");
		context.refresh();
		
		ProductTable productTable =  (ProductTable) context.getBean("productTable");
		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");          
		
		productTable.setId(productid);
		productTable.setName(productname);
		productTable.setPrice(productprice);
		productTable.setDescription(productdescription);
		
		productDAO.saveOrUpdate(productTable);
		 	
		ModelAndView modelAndView = new ModelAndView("addproduct");
		
		return modelAndView;
	
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
	

