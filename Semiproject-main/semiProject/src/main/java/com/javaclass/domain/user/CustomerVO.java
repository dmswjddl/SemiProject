package com.javaclass.domain.user;

public class CustomerVO {
	private int customerNo;
	private String customerName;
	private String customerId;
	private String customerPass;
	private String customerRrn;
	private String customerSex;
	private String customerEmail;
	private String customerTel;
	private String customerSigndate;
	
	private String customerRrn1;
	private String customerRrn2;
	private String customerEmailF;
	private String customerEmailE;
	private String customerTel1;
	private String customerTel2;
	private String customerTel3;
	
	private String cAddr1;
	private String cAddr2;
	private String cAddr3;
	
	
	public String getcAddr1() {
		return cAddr1;
	}
	public void setcAddr1(String cAddr1) {
		this.cAddr1 = cAddr1;
	}
	public String getcAddr2() {
		return cAddr2;
	}
	public void setcAddr2(String cAddr2) {
		this.cAddr2 = cAddr2;
	}
	public String getcAddr3() {
		return cAddr3;
	}
	public void setcAddr3(String cAddr3) {
		this.cAddr3 = cAddr3;
	}
	
	public String getCustomerSex() {
		return customerSex;
	}
	public void setCustomerSex(String customerSex) {
		this.customerSex = customerSex;
	}
	public String getCustomerRrn1() {
		return customerRrn1;
	}
	public void setCustomerRrn1(String customerRrn1) {
		this.customerRrn1 = customerRrn1;
	}
	public String getCustomerRrn2() {
		return customerRrn2;
	}
	public void setCustomerRrn2(String customerRrn2) {
		this.customerRrn2 = customerRrn2;
		if(Character.getNumericValue(customerRrn2.charAt(0))%2==0)
			this.customerSex="W";
		else
			this.customerSex="M";
	}
	public String getCustomerEmailF() {
		return customerEmailF;
	}
	public void setCustomerEmailF(String customerEmailF) {
		this.customerEmailF = customerEmailF;
	}
	public String getCustomerEmailE() {
		return customerEmailE;
	}
	public void setCustomerEmailE(String customerEmailE) {
		this.customerEmailE = customerEmailE;
	}
	public String getCustomerTel1() {
		return customerTel1;
	}
	public void setCustomerTel1(String customerTel1) {
		this.customerTel1 = customerTel1;
	}
	public String getCustomerTel2() {
		return customerTel2;
	}
	public void setCustomerTel2(String customerTel2) {
		this.customerTel2 = customerTel2;
	}
	public String getCustomerTel3() {
		return customerTel3;
	}
	public void setCustomerTel3(String customerTel3) {
		this.customerTel3 = customerTel3;
	}
	public int getCustomerNo() {
		return customerNo;
	}
	public void setCustomerNo(int customerNo) {
		this.customerNo = customerNo;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}
	public String getCustomerPass() {
		return customerPass;
	}
	public void setCustomerPass(String customerPass) {
		this.customerPass = customerPass;
	}
	public String getCustomerRrn() {
		return customerRrn;
	}
	public void setCustomerRrn(String customerRrn) {
		this.customerRrn = customerRrn;
	}
	public String getCustomerEmail() {
		return customerEmail;
	}
	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}
	public String getCustomerTel() {
		return customerTel;
	}
	public void setCustomerTel(String customerTel) {
		this.customerTel = customerTel;
	}
	public String getCustomerSigndate() {
		return customerSigndate;
	}
	public void setCustomerSigndate(String customerSigndate) {
		this.customerSigndate = customerSigndate;
	}
}
