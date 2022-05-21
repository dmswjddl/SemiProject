package com.javaclass.dao.user;

import java.util.List;

import com.javaclass.domain.user.ShopVO;


public interface ShopDAO {

	// 상품 상세보기
	public ShopVO getDetail(ShopVO vo);

	// 페이징 작업 + 상품 목록
	public List<ShopVO> productListPage(int displayPost, int postNum) throws Exception;

	// 카테고리 분류
	public List<ShopVO> category();
	public List<ShopVO> smallCate();

	// 페이징 작업 - 게시물 총 갯수
	public int count() throws Exception;

	// 상품 리뷰
	/* public ShopVO rStar(ShopVO vo); */

}