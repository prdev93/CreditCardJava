/**
 * 
 */
package com.bcj.marvelcreditcard.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Entity class for Address .
 * @author Abhinay
 *
 */

@Entity
@Table(name = "ADDRESS")
public class Address {

	@Id
	@Column(name = "adID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int adID;

	private String addressline1;
	private String addressline2;
	private String city;
	private String state;
	private String zipCode;
	private String country;

	public int getAdId() {
		return adID;
	}

	public void setAdID(int adID) {
		this.adID = adID;
	}

	public String getAddressline1() {
		return addressline1;
	}

	public void setAddressline1(String addressline1) {
		this.addressline1 = addressline1;
	}

	public String getAddressline2() {
		return addressline2;
	}

	public void setAddressline2(String addressline2) {
		this.addressline2 = addressline2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZipCode() {
		return zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	@Override
	public String toString() {
		return "Address [adID=" + adID + ", addressline1=" + addressline1 + ", addressline2=" + addressline2 + ", city="
				+ city + ", state=" + state + ", zipCode=" + zipCode + ", country=" + country + "]";
	}
}
