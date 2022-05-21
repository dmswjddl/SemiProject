package com.javaclass.domain.user;

public class CartVO {

	/*cart 테이블*/
	private int cartNo;		// seq : cart_no_seq	//장바구니번호
	private int customerNo;							//고객번호
	private int pNo;									//상품번호
	private int cartCount;								// 장바구니 갯수
	private String pName;		// 상품명
	private int pPrice;	// 상품 가격
	private String storedFileName;	// 고객에게 보여지는 상품 이미지
	private String originFileName;	// 고객에게 보여질지 상품 이미지
	private int sum;		// 상세 이미지에서 보여질 가격
	private int allSum;		// 장바구니에서 보여질 가격

	/*scrap 테이블*/
	private int scrapNo;		// seq : scrap_no_seq
	//fk : customer_no
	//fk : p_no

	
	
	
	public int getSum() {
		return sum;
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
	public String getStoredFileName() {
		return storedFileName;
	}
	public void setStoredFileName(String storedFileName) {
		this.storedFileName = storedFileName;
	}
	public String getOriginFileName() {
		return originFileName;
	}
	public void setOriginFileName(String originFileName) {
		this.originFileName = originFileName;
	}
	public int getScrapNo() {
		return scrapNo;
	}
	public void setScrapNo(int scrapNo) {
		this.scrapNo = scrapNo;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public int getAllSum() {
		return allSum;
	}
	public void setAllSum(int allSum) {
		this.allSum = allSum;
	}
	
}
