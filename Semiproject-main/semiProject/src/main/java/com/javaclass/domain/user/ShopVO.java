package com.javaclass.domain.user;

public class ShopVO {


	/*product 테이블*/
	private int pNo;			// seq : product_no_seq
	private String pName;
	private int pPrice;
	private String pDetail;
	private int pCount;
	private String pDate;
	private int pHits;
	private String pColor;
	// fk: category_code
	/*product category 테이블*/
	private String categoryCode;
	private String categoryName;


	/*product review 테이블*/
	private int rNo;			// seq : review_no_seq
	//fk : p_no
	private int customerNo;
	private String rId;
	private String rContent;
	private String rDate;
	private int rStar;

	/*product image 테이블*/
	private int fileNumber;			// seq : file_no_seq
	//fk : p_no
	private String originFileName;
	private String storedFileName;
	private long fileSize;

	/*product d category 테이블*/
	private String dCategoryCode;
	//fk : category_code;
	private String dName;
	
	
	
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
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
	public int getpHits() {
		return pHits;
	}
	public void setpHits(int pHits) {
		this.pHits = pHits;
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
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public int getCustomerNo() {
		return customerNo;
	}
	public void setCustomerNo(int customerNo) {
		this.customerNo = customerNo;
	}
	public String getrId() {
		return rId;
	}
	public void setrId(String rId) {
		this.rId = rId;
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
	public int getFileNumber() {
		return fileNumber;
	}
	public void setFileNumber(int fileNumber) {
		this.fileNumber = fileNumber;
	}
	public String getOriginFileName() {
		return originFileName;
	}
	public void setOriginFileName(String originFileName) {
		this.originFileName = originFileName;
	}
	public String getStoredFileName() {
		return storedFileName;
	}
	public void setStoredFileName(String storedFileName) {
		this.storedFileName = storedFileName;
	}
	public long getFileSize() {
		return fileSize;
	}
	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
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
	

	/***************************************************************/



	

	/**************************************************************8*/	

}
