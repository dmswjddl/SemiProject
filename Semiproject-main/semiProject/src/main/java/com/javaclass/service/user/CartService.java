package com.javaclass.service.user;


import java.util.List;

import com.javaclass.domain.user.CartVO;


public interface CartService {

	// 장바구니에 추가하기
	void addCart(CartVO vo);

	// 사용자 장바구니 조회
	List<CartVO> cartList(CartVO vo);

	// 장바구니 개별 삭제
	void deleteCart(CartVO vo);

	// 장바구니 합계
	int allSum(CartVO vo);

	// 스크랩하기
	void addScrap(CartVO vo);
}
