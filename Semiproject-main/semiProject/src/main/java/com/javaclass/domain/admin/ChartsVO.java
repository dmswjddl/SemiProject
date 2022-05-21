package com.javaclass.domain.admin;

import java.text.SimpleDateFormat;

public class ChartsVO {
	SimpleDateFormat sdf2 = new SimpleDateFormat("MM");
	
	private String categoryCode;
	private String categoryName;
	private int pieCount;
	
	
	private String age;
	private int menCount;
	private int womenCount;
	
	private int graphSumPrice;
	private String orderMonth;
	
	private String orderDay;
	private String dbMonth = sdf2.format(System.currentTimeMillis());
	private int jspMonth = Integer.parseInt(sdf2.format(System.currentTimeMillis()));

	private int daySum;
	

	public String getOrderDay() {
		return orderDay;
	}
	public void setOrderDay(String orderDay) {
		this.orderDay = orderDay.substring(3, 5);
	}
	
	
	
	public String getDbMonth() {
		return dbMonth;
	}
	public void setDbMonth(String dbMonth) {
		if(Integer.parseInt(dbMonth)<10)
			dbMonth = "0"+dbMonth;
		this.dbMonth = dbMonth;
	}
	public int getJspMonth() {
		return jspMonth;
	}
	public void setJspMonth(int jspMonth) {
		this.jspMonth = jspMonth;
	}

	public int getDaySum() {
		return daySum;
	}
	public void setDaySum(int daySum) {
		this.daySum = daySum;
	}
	public int getGraphSumPrice() {
		return graphSumPrice;
	}
	public void setGraphSumPrice(int graphSumPrice) {
		this.graphSumPrice = graphSumPrice;
	}
	public String getOrderMonth() {
		return orderMonth;
	}
	public void setOrderMonth(String orderMonth) {
		this.orderMonth = orderMonth;
	}

	public int getMenCount() {
		return menCount;
	}
	public void setMenCount(int menCount) {
		this.menCount = menCount;
	}
	public int getWomenCount() {
		return womenCount;
	}
	public void setWomenCount(int womenCount) {
		this.womenCount = womenCount;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	
	
	public String getCategoryCode() {
		return categoryCode;
	}
	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}
	public int getPieCount() {
		return pieCount;
	}
	public void setPieCount(int pieCount) {
		this.pieCount = pieCount;
	}

	
}
