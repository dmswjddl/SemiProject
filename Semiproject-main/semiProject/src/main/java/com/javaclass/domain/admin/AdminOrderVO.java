package com.javaclass.domain.admin;

public class AdminOrderVO {   
   //CART테이블 변수
   private int cartNo;
   private int customerNo;
   private int pNo;
   private int cartCount;
   
   //Product테이블 변수
   private int pPrice;
   private String pName;
   private String pDetail;
   private int pCount;
   private String pDate;
   private String pColor;
   private String categoryCode;
   
   //UserOrder테이블 변수
   private int orderNo;
   private String addr1;
   private String addr2;
   private String addr3;
   private String receiverName;
   private String receiverTel;
   private String orderDate;
   
   //user_order_detail테이블 변수
   private int orderDetailNumber;
   private int productPrice;
   private int productCount;
   private String orderCheck;
   private int totalPrice;
   
   //customer테이블
   private String customerName;
   
   
   public int getTotalPrice() {
	return totalPrice;
   }
   public void setTotalPrice(int totalPrice) {
	this.totalPrice = totalPrice;
   }
   public String getCustomerName() {
	return customerName;
   }
   public void setCustomerName(String customerName) {
	this.customerName = customerName;
   }
   public int getOrderDetailNumber() {
	  return orderDetailNumber;
   }
   public void setOrderDetailNumber(int orderDetailNumber) {
	  this.orderDetailNumber = orderDetailNumber;
   }
   public String getOrderCheck() {
	  return orderCheck;
   }
   public void setOrderCheck(String orderCheck) {
	  this.orderCheck = orderCheck;
   }

   public int getOrderNo() {
      return orderNo;
   }
   public void setOrderNo(int orderNo) {
      this.orderNo = orderNo;
   }
   public String getOrderDate() {
      return orderDate;
   }
   public void setOrderDate(String orderDate) {
      this.orderDate = orderDate;
   }  
   
   public int getCartNo() {
      return cartNo;
   }
   public void setCartNo(int cartNo) {
      this.cartNo = cartNo;
   }
   public int getCustomerNo() {
      return customerNo;
   }
   public void setCustomerNo(int customerNo) {
      this.customerNo = customerNo;
   }
   public int getpNo() {
      return pNo;
   }
   public void setpNo(int pNo) {
      this.pNo = pNo;
   }
   public int getCartCount() {
      return cartCount;
   }
   public void setCartCount(int cartCount) {
      this.cartCount = cartCount;
   }
   public int getpPrice() {
      return pPrice;
   }
   public void setpPrice(int pPrice) {
      this.pPrice = pPrice;
   }
   public String getpName() {
      return pName;
   }
   public void setpName(String pName) {
      this.pName = pName;
   }
   public String getpDetail() {
      return pDetail;
   }
   public void setpDetail(String pDetail) {
      this.pDetail = pDetail;
   }

   public int getpCount() {
      return pCount;
   }
   public void setpCount(int pCount) {
      this.pCount = pCount;
   }
   public String getpDate() {
      return pDate;
   }
   public void setpDate(String pDate) {
      this.pDate = pDate;
   }
   public String getpColor() {
      return pColor;
   }
   public void setpColor(String pColor) {
      this.pColor = pColor;
   }
   public String getCategoryCode() {
      return categoryCode;
   }
   public void setCategoryCode(String categoryCode) {
      this.categoryCode = categoryCode;
   }
   public String getAddr1() {
      return addr1;
   }
   public void setAddr1(String addr1) {
      this.addr1 = addr1;
   }
   public String getAddr2() {
      return addr2;
   }
   public void setAddr2(String addr2) {
      this.addr2 = addr2;
   }
   public String getAddr3() {
      return addr3;
   }
   public void setAddr3(String addr3) {
      this.addr3 = addr3;
   }
   public String getReceiverName() {
      return receiverName;
   }
   public void setReceiverName(String receiverName) {
      this.receiverName = receiverName;
   }
   public String getReceiverTel() {
      return receiverTel;
   }
   public void setReceiverTel(String receiverTel) {
      this.receiverTel = receiverTel;
   }
   public int getProductPrice() {
      return productPrice;
   }
   public void setProductPrice(int productPrice) {
      this.productPrice = productPrice;
   }
   public int getProductCount() {
      return productCount;
   }
   public void setProductCount(int productCount) {
      this.productCount = productCount;
   } 
   
}