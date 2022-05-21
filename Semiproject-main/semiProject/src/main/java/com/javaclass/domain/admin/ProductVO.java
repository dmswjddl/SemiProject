package com.javaclass.domain.admin;
 
import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.UUID;
 
import org.springframework.web.multipart.MultipartFile;
 
public class ProductVO {
 
	private int pNo; //상품번호 
	private int pPrice; //상품가격
	private String pName; // 상품명
	private String pDetail; //상품상세설명 
	private int pCount;// 상품수량
	private String pDate; //추가한 날짜 
	private String pColor; //상품색상
	private String categoryCode; //카테고리번호 
 	
	private String categoryName;//카테고리이름 
	private String dCategoryCode; //세부카테고리코드
	private String dName; //세부카테고리 이름 
	
	private int fileNumber;// 이미지File 번호 - PrimaryKey
	//private int iSeq;  // Foreign Key of Product Table  
	private String originFileName; // 파일명
	private String storedFileName; // 저장된 파일명 
	private long fileSize; //파일 사이즈 
	
	private int customerNo;
	private String customerName;
	private String customerId;
	private String customerPass;
	private String customerRrn;
	private String customerSex;
	private String customerEmail;
	private String customerTel;
	private String customerSigndate;
	
	MultipartFile file;
 
 
	
	
	
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
 
 
	public String getCustomerSex() {
		return customerSex;
	}
 
 
	public void setCustomerSex(String customerSex) {
		this.customerSex = customerSex;
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
 
 
	public int getpNo() {
		return pNo;
	}
 
 
	public void setpNo(int pNo) {
		this.pNo = pNo;
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
 
 
	public MultipartFile getFile() {
		return file;
	}
 
 
	public void setFile(MultipartFile file) {
		this.file = file;
		
		//파일 업로드 작업을 여기서 
				if( !file.isEmpty())
				{
					this.originFileName = file.getOriginalFilename();
					this.fileSize = file.getSize();
					
					// 실제 저장되는 파일명 만들기
					
					UUID uuid = UUID.randomUUID(); //uuid는 저장방식. 이상한 숫자 막 나오는거 
					storedFileName = uuid.toString() + "_" + originFileName;
					
					//이러고나서 진짜 저장.
					// 저장 File - 자바에서 파일과 디렉토리를 생성, 삭제, 관리하는 클래스
					File f = new File("C:\\Users\\kimja\\Git\\semiProject\\src\\main\\webapp\\resources\\upload\\"+ storedFileName );
					
					try {
						file.transferTo(f);
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}
					
				}
			}
		
	}
 
 