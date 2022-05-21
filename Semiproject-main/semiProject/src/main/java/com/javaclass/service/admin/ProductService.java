package com.javaclass.service.admin;

import java.util.HashMap;
import java.util.List;

import com.javaclass.domain.admin.CategoryVO;
import com.javaclass.domain.admin.ProductVO;

public interface ProductService {

	//CRUD 기능의 메소드 구현

	//상품 추가 
	void insertProduct(ProductVO vo);

	//상품 목록 조회 
	List<ProductVO> getProductList(HashMap map);

	//회원 목록 조회
	List<ProductVO> getMemberList(HashMap map);

	//상품 수정 
	void updateProduct(ProductVO vo);

	//상품 삭제 
	void deleteProduct(ProductVO vo);

	//글 상세보기 
	ProductVO detailProductView(ProductVO vo);

	//카테고리 
	List<CategoryVO> getCategoryList(ProductVO vo);

	//세부카테고리
	List<CategoryVO> getDcategoryList(ProductVO vo);

	//카테고리찾기 
	List<CategoryVO> changeCategory(CategoryVO vo);

}
