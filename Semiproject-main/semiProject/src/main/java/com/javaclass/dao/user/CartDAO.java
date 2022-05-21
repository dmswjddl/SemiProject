package com.javaclass.dao.user;

import java.util.List;

import com.javaclass.domain.user.CartVO;


public interface CartDAO {

	// 장바구니에 추가하기
	public void addCart(CartVO vo);

	// 사용자 장바구니 조회 
	public List<CartVO> cartList(CartVO vo);

	// 장바구니 삭제
	public void deleteCart(CartVO vo);

	// 장바구니 합계
	public int allSum(CartVO vo);

	// 스크랩하기
	public void addScrap(CartVO vo);
}