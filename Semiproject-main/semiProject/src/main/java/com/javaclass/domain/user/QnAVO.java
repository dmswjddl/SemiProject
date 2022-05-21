package com.javaclass.domain.user;

public class QnAVO {
	private String qTitle;
	private String qContent;
	private String qDate;
	private int qNo;
	private String qWriter;
	private String qPass;
	private String qrContent;
	private String qrDate;
	
	
	public QnAVO() {
		super();
	}
	
	public QnAVO(String qTitle, String qContent, String qDate, int qNo, String qWriter, String qPass, String qrContent,
			String qrDate) {
		super();
		this.qTitle = qTitle;
		this.qContent = qContent;
		this.qDate = qDate;
		this.qNo = qNo;
		this.qWriter = qWriter;
		this.qPass = qPass;
		this.qrContent = qrContent;
		this.qrDate = qrDate;
	}
	
	public String getqTitle() {
		return qTitle;
	}
	public void setqTitle(String qTitle) {
		this.qTitle = qTitle;
	}
	public String getqContent() {
		return qContent;
	}
	public void setqContent(String qContent) {
		this.qContent = qContent;
	}
	public String getqDate() {
		return qDate;
	}
	public void setqDate(String qDate) {
		this.qDate = qDate;
	}
	public int getqNo() {
		return qNo;
	}
	public void setqNo(int qNo) {
		this.qNo = qNo;
	}
	public String getqWriter() {
		return qWriter;
	}
	public void setqWriter(String qWriter) {
		this.qWriter = qWriter;
	}
	public String getqPass() {
		return qPass;
	}
	public void setqPass(String qPass) {
		this.qPass = qPass;
	}
	public String getQrContent() {
		return qrContent;
	}
	public void setQrContent(String qrContent) {
		this.qrContent = qrContent;
	}
	public String getQrDate() {
		return qrDate;
	}
	public void setQrDate(String qrDate) {
		this.qrDate = qrDate;
	}
	
	

}
