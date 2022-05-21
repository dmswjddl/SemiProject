package com.javaclass.service.user;

import java.util.List;

import com.javaclass.domain.user.ShopVO;


public interface ShopService {

	// 상품 상세 조회
	ShopVO getDetail(ShopVO vo);

	// 상품 리뷰
	/* ShopVO rStar(ShopVO vo); */

	// 상품 목록 + 페이징
	List<ShopVO> productListPage(int displayPost, int postNum) throws Exception;	

	// 카테고리 보기
	List<ShopVO> category();

	List<ShopVO> smallCate();

	// 게시물 총 갯수
	public int count() throws Exception;

}
