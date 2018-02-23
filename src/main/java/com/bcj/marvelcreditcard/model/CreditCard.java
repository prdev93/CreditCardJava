/**
 * 
 */
package com.bcj.marvelcreditcard.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * @author Abhinay
 *
 */

@Entity
public class CreditCard {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int cccID;
	private String creditCardNumber;
	private int cvv;
	private String exp_Date;
	private int cust_ID;
	private int creditLimit;

	public void setCust_ID(int cust_ID) {
		this.cust_ID = cust_ID;
	}

	public int getCust_ID() {
		return cust_ID;
	}

	public String getCreditCardNumber() {
		return creditCardNumber;
	}

	public void setCreditCardNumber(String creditCardNumber) {
		this.creditCardNumber = creditCardNumber;
	}

	public int getCvv() {
		return cvv;
	}

	public void setCvv(int cvv) {
		this.cvv = cvv;
	}

	public String getExp_Date() {
		return exp_Date;
	}

	public void setExp_Date(String exp_Date) {
		this.exp_Date = exp_Date;
	}

	public int getCccID() {
		return cccID;
	}

	public void setCccID(int cccID) {
		this.cccID = cccID;
	}

	public int getCreditLimit() {
		return creditLimit;
	}

	public void setCreditLimit(int creditLimit) {
		this.creditLimit = creditLimit;
	}

	@Override
	public String toString() {
		return "CreditCardCard [cccID=" + cccID + ", creditCardNumber=" + creditCardNumber + ", cvv=" + cvv
				+ ", exp_Date=" + exp_Date + "]";
	}

}
