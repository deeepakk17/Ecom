package pro.niit.petshop.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import pro.niit.petshop.dao.SupplierDAO;
import pro.niit.petshop.handler.FileHandler;
import pro.niit.petshop.model.SupplierDetails;



@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDetails supplierDetails ;
	
	@Autowired
	private SupplierDAO supplierDAO ;
	
	@RequestMapping(value = "/admin/gomanagesupplier")
	public ModelAndView gomanagesupplier() {
		ModelAndView modelAndView = new ModelAndView("managesuppliers");
		return modelAndView;
	}

	@RequestMapping(value ="/admin/addsupplier",method=RequestMethod.GET)
	public ModelAndView goaddsupplier() {
		ModelAndView modelAndView = new ModelAndView("addsupplier");
		modelAndView.addObject(supplierDetails);				
		return modelAndView;	
	}
	
	String path = "F:\\Deepk\\dbimage\\";
	
	@RequestMapping(value ="/addsupplier",method=RequestMethod.POST)
	public ModelAndView addsupplier(@ModelAttribute("supplierDetails") SupplierDetails supplierDetails ) {
		ModelAndView modelAndView = new ModelAndView("managesuppliers");
		supplierDAO.saveOrUpdate(supplierDetails);	
		MultipartFile file=supplierDetails.getImage();
		FileHandler.upload(path, file, supplierDetails.getId()+".jpg");
						
		return modelAndView;	
	}
}