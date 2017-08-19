package com.project.ecommerce.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.project.backend.dao.CategoryDAO;
import com.project.backend.dao.ProductDAO;
import com.project.backend.dto.Category;
import com.project.backend.dto.Product;
import com.project.ecommerce.util.FileUploadUtility;
import com.project.ecommerce.validator.ProductValidator;

@Controller
@RequestMapping("/manage")
public class ManagementController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	private static final Logger logger=LoggerFactory.getLogger(ManagementController.class);

	@RequestMapping(value="/products",method=RequestMethod.GET)
	public ModelAndView showManageProducts(@RequestParam(name="operation", required=false) String operation){
		
		ModelAndView mv= new ModelAndView("page");
		mv.addObject("userClickManageProducts",true);
		mv.addObject("title","Manage Products");
		
		Product nProduct = new Product();
		
		//set few fields
		nProduct.setSupplierId(1);
		nProduct.setActive(true);
		
		mv.addObject("product",nProduct);
		
		if (operation!=null) {
			
			if(operation.equals("product")){
				mv.addObject("message","Product submitted successfully!");
			}
		}
		return mv;
		
	}
	
	//handling product submission
	@RequestMapping(value="/products",method=RequestMethod.POST)
	public String handleProductSubmission(@Valid @ModelAttribute("product") Product mProduct, BindingResult results, Model model,
			HttpServletRequest request){
		
		new ProductValidator().validate(mProduct, results);
		
		//check if any errors
		if(results.hasErrors()){
			
			model.addAttribute("userClickManageProducts",true);
			model.addAttribute("title", "Manage Products");
			model.addAttribute("message", "Validation failed");
			return "page"; 
		}
		
		logger.info(mProduct.toString());
		
		//create a new product record
		productDAO.add(mProduct);
		
		if(!mProduct.getFile().getOriginalFilename().equals("")){
			
			FileUploadUtility.uploadFile(request, mProduct.getFile(), mProduct.getCode());
			
		}
		
		return "redirect:/manage/products?operation=product";
	}
	//returning categories for aal request
	@ModelAttribute("categories")
	public List<Category> getCategories(){
		
		return categoryDAO.list();
	}
	
}
