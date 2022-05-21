package com.javaclass.domain.admin;

import java.util.List;

public class CategoryVO {
	
	private String categoryCode;
	private String categoryName;
	
	private String dCategoryCode;
	private String dName;
	
	private List<CategoryVO> list;
	
	public String getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(String categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getdCategoryCode() {
		return dCategoryCode;
	}

	public void setdCategoryCode(String dCategoryCode) {
		this.dCategoryCode = dCategoryCode;
	}

	public String getdName() {
		return dName;
	}

	public void setdName(String dName) {
		this.dName = dName;
	}

	public List<CategoryVO> getList() {
		return list;
	}

	public void setList(List<CategoryVO> list) {
		this.list = list;
	}
}
