package org.niit.dbconnect.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import org.niit.dbconnect.dao.ProductDAO;
import org.niit.dbconnect.model.FileUpload;
import org.niit.dbconnect.model.ProductTable;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;




@Controller
public class ProductController {
	
	
	
	String path = "F:\\Deepk\'dbimage";
	
	private static final Logger logger = LoggerFactory
			.getLogger(FileUploadController.class);
	
	
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private ProductTable productTable;
	
	
			
	@RequestMapping("/gomanageproducts")
	public ModelAndView gomanageproducts() {
		ModelAndView modelAndView = new ModelAndView("manageproducts");
		modelAndView.addObject("productTable", productTable);
		modelAndView.addObject("productList",this.productDAO.list());
		
		return modelAndView;
	}
	
	@RequestMapping(value ="/addproductpage",method=RequestMethod.GET)
	public ModelAndView goaddproducts() {
		ModelAndView modelAndView = new ModelAndView("addproduct");
		modelAndView.addObject("productTable", productTable);
		modelAndView.addObject("productList",this.productDAO.list());
		
		
		return modelAndView;	
	}
	
	
	
	@RequestMapping(value ="/addproduct",method=RequestMethod.POST)
	public ModelAndView addproducts(@ModelAttribute("productTable") ProductTable productTable, Model model) {
		ModelAndView modelAndView = new ModelAndView("manageproducts");
		productDAO.saveOrUpdate(productTable);	
		MultipartFile file=productTable.getMultipartFile();
		FileUpload.upload(path, file, productTable.getId()+".jpg");
		modelAndView.addObject("file",file);
		
		modelAndView.addObject("productTable", productTable);
		modelAndView.addObject("productList",this.productDAO.list());
			
		
		return modelAndView;	
	}
	
	
	@RequestMapping(value ="product/delete/{id}")
	public String deleteproduct(@PathVariable("id") String id, ModelMap model) {
		productDAO.delete(id);
		model.addAttribute("productTable", productTable);
		model.addAttribute("productList",this.productDAO.list());
		return "manageproducts";
	}
	
	@RequestMapping(value ="product/edit/{id}")
	public String editproduct(@PathVariable("id") String id, Model model) {
		productTable = productDAO.get(id);
		model.addAttribute("productTable", productTable);
		model.addAttribute("productList",this.productDAO.list());
		return "manageproducts";
	
	}
	/*@ResponseBody
	@RequestMapping(value ="/addproduct",method=RequestMethod.POST)
	public ModelAndView addproduct(@RequestParam("id") String productid,@RequestParam("name") String productname, @RequestParam("price") int productprice,@RequestParam("description") String productdescription, @RequestParam("file") MultipartFile file) {
		
		
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
		
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				// Creating the directory to store file
				String path = "F:\\Deepk\\dbimage";
				File dir = new File(path + File.separator + "tmpFiles");
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath()
						+ File.separator + productname);
				BufferedOutputStream stream = new BufferedOutputStream(
						new FileOutputStream(serverFile));
				stream.write(bytes);
				stream.close();

				logger.info("Server File Location="	+ serverFile.getAbsolutePath());

				// "You successfully uploaded file=" + productname;
			} catch (Exception e) {
				//return "You failed to upload " + name + " => " + e.getMessage();
			}
		} else {
			//return "You failed to upload " + name	+ " because the file was empty.";
		}
		modelAndView.addObject("productTable", productTable);
		modelAndView.addObject("productList",this.productDAO.list());
		return modelAndView;
	
	}	*/
	
/*	@RequestMapping(value ="/listproduct",method=RequestMethod.GET)
	public ModelAndView listallproduct() {
		
		ProductDAO productDAO = (ProductDAO) context.getBean("productDAO");
		productDAO.list();
		ModelAndView modelAndView = new ModelAndView("viewproduct");
		modelAndView.addAllObjects(Map<String p>,list);
		return modelAndView;
			
		} */
		
		
	}


