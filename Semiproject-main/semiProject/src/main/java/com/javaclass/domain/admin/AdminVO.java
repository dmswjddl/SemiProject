package com.javaclass.domain.admin;

public class AdminVO {										//관리자 로그인을 위한VO
	private String adminId;
	private String adminPass;
	
	
	public String getAdminId() {
		return adminId;
	}
	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}
	public String getAdminPass() {
		return adminPass;
	}
	public void setAdminPass(String adminPass) {
		this.adminPass = adminPass;
	}
}
