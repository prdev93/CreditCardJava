/**
 * 
 */
package com.bcj.marvelcreditcard.service;

import javax.transaction.Transactional;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bcj.marvelcreditcard.dao.CreditCardDAO;
import com.bcj.marvelcreditcard.model.CreditCard;
import com.bcj.marvelcreditcard.model.Customer;
import com.bcj.marvelcreditcard.model.Register;

/**
 * Service class for credit card where it has serval method to processs customer
 * .
 * 
 * @author Abhinay
 */

@Service("regService")
public class CreditCardService {

	@Autowired
	private CreditCardDAO regDAO;

	private static final Logger logger = Logger.getLogger(CreditCardService.class);

	public void setRegDAO(CreditCardDAO regDAO) {
		this.regDAO = regDAO;
	}

	/**
	 * Method to save the details of credit card application .
	 */
	@Transactional
	public void saveCustomer(Customer cust) {


		cust.setStatus("new");

		/* logger.info(address.toString()); */
		this.regDAO.saveCustomer(cust);
	}

	/**
	 * Method to get the credit card detials of a customer with given credit
	 * card number.
	 */
	@Transactional
	public CreditCard getCreditCard(String ccNumb) {

		CreditCard cc = this.regDAO.getCreditCard(ccNumb);

		return cc;
	}

	/**
	 * Method to verify weather the customer has entered valid credit card
	 * number and get the credit card details of that particular customer and
	 * process hiim/her.
	 */
	@Transactional
	public boolean registerCustomer(Register reg) {

		CreditCard cc = getCreditCard(reg.getCcc());

		if (cc != null) {
			reg.setCustID(cc.getCust_ID());
			this.regDAO.registerCustomer(reg);
			return true;
		} else {
			logger.error("User entered incorrect card number .");
			return false;
		}
	}

	/**
	 * Method where we authenticate a customer.
	 */
	@Transactional
	public Register toLogin(Register reg) {

		Register reg_stored;

		reg_stored = this.regDAO.getCredentials(reg.getUserName());

		if (reg_stored != null && reg_stored.getPassword().equals(reg.getPassword())) {

			/* System.out.println(reg_stored.toString()); */
			return reg_stored;
		} else {

			logger.error("User entered incorrect credentials to register/activate");
			return null;
		}

	}

}
