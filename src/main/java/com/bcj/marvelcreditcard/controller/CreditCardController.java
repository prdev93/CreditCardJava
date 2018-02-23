package com.bcj.marvelcreditcard.controller;


import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bcj.marvelcreditcard.model.Customer;
import com.bcj.marvelcreditcard.model.Register;
import com.bcj.marvelcreditcard.service.CreditCardService;

/**
 * Contoller class .
 * @author Abhinay
 */
@Controller
public class CreditCardController {

	private static final Logger logger = Logger.getLogger(com.bcj.marvelcreditcard.controller.CreditCardController.class);
	
	@Autowired
	private CreditCardService regService;	
	
	public void setRegistrationService(CreditCardService regService) {
		this.regService = regService;
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		return "welcome";
	}
	
	/**
	 * Method to Login the registred customer. 
	 */
	@RequestMapping(value = "/Login",method = RequestMethod.POST)
	public String toLogin(@ModelAttribute("reg") Register reg,Model model) {

		String response;
		Register reg_return=regService.toLogin(reg);
		if(reg_return!=null){
		
			/*System.out.println("Login : "+reg_return.toString());*/
			model.addAttribute("reg_return", reg_return);
			response="profile";
		}
		
		else{
		response="/Failed";
		logger.error("User entered incorrect credentials");
		}
		
		return response;

	}

	/**
	 * Method for registration form.
	 */
	@RequestMapping(value = "/RegistrationForm", method = RequestMethod.GET)
	public String toApplication() {
		return "RegistrationForm";
	}

	/**
	 * Method to save the details which an applicant has entered.
	 */
	@RequestMapping(value = "/submitForm",method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("cust") Customer cust) {

		/*cust.setAddress(address);
		logger.info("CONTROLLER" + address.toString());*/
		
		regService.saveCustomer(cust);
		
		/*logger.info(address.toString());*/
		return "success";

	}
	
	/**
	 * Method to SignIn/Register form.
	 */
	@RequestMapping(value = "/SignIn", method = RequestMethod.GET)
	public String toSignIn() {
		
		return "SignIn";
	}
	
	/**
	 * Method to Register a customer who's card has been activated.
	 */
	@RequestMapping(value = "/SignIn",method = RequestMethod.POST)
	public String toRegister(@ModelAttribute("reg") Register reg) {

		String response;
		if(regService.registerCustomer(reg)){
			response="/welcome";
		}
		
		else{
		response="/Failed";
		logger.error("User entered incorrect credentials to register/activate");
		}
		
		return response;

	}

}
