/**
 * 
 */
package com.bcj.marvelcreditcard.dao;

import org.apache.log4j.Logger;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.bcj.marvelcreditcard.model.CreditCard;
import com.bcj.marvelcreditcard.model.Customer;
import com.bcj.marvelcreditcard.model.Register;

/**
 * DAO class where the customer data is saved or brought from database.
 * 
 * @author Abhinay
 */

@Repository
public class CreditCardDAO {

	private static final Logger logger = Logger.getLogger(CreditCardDAO.class);
	@Autowired
	private SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sf) {
		this.sessionFactory = sf;
	}

	/**
	 * Method to save the details of credit card application .
	 */
	public void saveCustomer(Customer cust) {

		/* System.out.println(sessionFactory + " " + cust); */
		Session session = this.sessionFactory.getCurrentSession();

		/*
		 * Address address = new Address(); address=cust.getAddress(); int
		 * aid=(Integer) session.save(address); address.setAdID(aid);
		 * cust.setAddress(address);
		 */

		session.persist(cust);

	}

	/**
	 * Method to get the credit card detials of a customer with given credit
	 * card number.
	 */
	public CreditCard getCreditCard(String ccnumb) {

		Session session = this.sessionFactory.getCurrentSession();

		Query query = session.createQuery("from CreditCard where creditCardNumber = :ccnumb");
		query.setString("ccnumb", ccnumb);
		CreditCard cc = (CreditCard) query.uniqueResult();

		return cc;

	}

	/**
	 * Mehod to register the customer with his account credentials.
	 */
	public void registerCustomer(Register reg) {

		Session session = this.sessionFactory.getCurrentSession();
		/* System.out.println("presist"+reg.toString()); */
		session.persist(reg);
	}

	/**
	 * Method to get the credentials of a given username of a customer .
	 */
	public Register getCredentials(String uname) {

		Session session = this.sessionFactory.getCurrentSession();

		Query query = session.createQuery("from Register where userName = :uname");
		query.setString("uname", uname);
		Register reg = (Register) query.uniqueResult();
		/* System.out.println(reg.toString()); */
		return reg;

	}

}
