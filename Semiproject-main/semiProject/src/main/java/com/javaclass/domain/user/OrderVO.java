package com.javaclass.domain.user;

public class OrderVO {
	private int orderNo;
	private int customerNo;
	private int pNum;
	private int orderDetailNumber;
	private String customerId;
	private String customerName;
	
	private String orderDate;
	
	private String PName;
	private String PPrice;
	
	private String result;
	
	
	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public int getCustomerNo() {
		return customerNo;
	}

	public void setCustomerNo(int customerNo) {
		this.customerNo = customerNo;
	}


	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	public String getPName() {
		return PName;
	}

	public void setPName(String pName) {
		PName = pName;
	}

	public String getPPrice() {
		return PPrice;
	}

	public void setPPrice(String pPrice) {
		PPrice = pPrice;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}
	public String getCustomerId() {
		return customerId;
	}
	
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public int getOrderDetailNumber() {
		return orderDetailNumber;
	}

	public void setOrderDetailNumber(int orderDetailNumber) {
		this.orderDetailNumber = orderDetailNumber;
	}

	public int getpNum() {
		return pNum;
	}

	public void setpNum(int pNum) {
		this.pNum = pNum;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	
}
