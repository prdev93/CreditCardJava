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
 * Entity class for Finanical information.
 * @author Abhinay
 */

@Entity
@Table(name = "FINANICAL")
public class Finanical {

	@Id
	@Column(name = "fID")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int fID;

	private String anualIncome;
	private String companyName;

	public int getfID() {
		return fID;
	}

	public void setfID(int fID) {
		this.fID = fID;
	}

	public String getAnualIncome() {
		return anualIncome;
	}

	public void setAnualIncome(String anualIncome) {
		this.anualIncome = anualIncome;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	@Override
	public String toString() {
		return "Finanical [fID=" + fID + ", anualIncome=" + anualIncome + ", companyName=" + companyName + "]";
	}

}
