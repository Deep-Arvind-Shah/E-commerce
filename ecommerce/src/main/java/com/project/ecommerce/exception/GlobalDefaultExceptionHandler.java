package com.project.ecommerce.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;

@ControllerAdvice
public class GlobalDefaultExceptionHandler {

	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView handlerNoHandlerFoundException(){
		
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("errorTitle","The page is not constructed!");
		mv.addObject("errorDescription","The page you are looking for is not available!");
		mv.addObject("title","404 Error Page!");
		
		
		return mv;
	}
	
	@ExceptionHandler(ProductNotFoundException.class)
	public ModelAndView handlerProductNotFoundException(){
		
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("errorTitle","Product not available!");
		mv.addObject("errorDescription","The product you are looking for is not available!");
		mv.addObject("title","Product not Available!");
		
		
		return mv;
	}
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handlerForException(){
		
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("errorTitle","Contact your Administrator!");
		mv.addObject("errorDescription", "");
		mv.addObject("title","Error!");  
		
		
		return mv;
	}	
}
