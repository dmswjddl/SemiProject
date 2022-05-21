package com.javaclass.domain.user;

public class ReviewVO {
	
	private int rNo;
	private int pNo;
	private int customerNo;
	private int orderDetailNumber;
	private int orderNo;
	private String rId; //=custoemrId
	private String rContent; //작성내용
	private String rDate; //작성일
	private int rStar; //별점
	
	

	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public int getCustomerNo() {
		return customerNo;
	}
	public void setCustomerNo(int customerNo) {
		this.customerNo = customerNo;
	}

	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public String getrDate() {
		return rDate;
	}
	public void setrDate(String rDate) {
		this.rDate = rDate;
	}
	public int getrStar() {
		return rStar;
	}
	public void setrStar(int rStar) {
		this.rStar = rStar;
	}
	public int getOrderDetailNumber() {
		return orderDetailNumber;
	}
	public void setOrderDetailNumber(int orderDetailNumber) {
		this.orderDetailNumber = orderDetailNumber;
	}

	public String getrId() {
		return rId;
	}
	public void setrId(String rId) {
		this.rId = rId;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	
	
	
}
