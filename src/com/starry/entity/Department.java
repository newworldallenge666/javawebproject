package com.starry.entity;

import javax.persistence.Entity;

@Entity
/**
 * @author Administrator
 *
 */
public class Department {
	private String cNumber;
	private String dName;
	private String dDec;//
	
	public String getcNumber() {
		return cNumber;
	}
	public void setcNumber(String cNumber) {
		this.cNumber = cNumber;
	}
	public String getdName() {
		return dName;
	}
	public void setdName(String dName) {
		this.dName = dName;
	}
	public String getdDec() {
		return dDec;
	}
	public void setdDec(String dDec) {
		this.dDec = dDec;
	}
	@Override
	public String toString() {
		return "Department [cNumber=" + cNumber + ", dName=" + dName
				+ ", dDec=" + dDec + "]";
	}
	public Department(String cNumber, String dName, String dDec) {
		super();
		this.cNumber = cNumber;
		this.dName = dName;
		this.dDec = dDec;
	}
	
	
}
