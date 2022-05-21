package com.javaclass.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.user.CartDAOImpl;
import com.javaclass.domain.user.CartVO;

@Service("cartService")
public  class CartServiceImpl implements CartService {

	@Autowired
	private CartDAOImpl cartDAO;

	// 장바구니에 추가하기
	public void addCart(CartVO vo) {
		cartDAO.addCart(vo);
	}

	// 사용자 장바구니 조회
	public List<CartVO> cartList(CartVO vo) {
		return cartDAO.cartList(vo);
	}

	// 장바구니 개별 삭제
	public void deleteCart(CartVO vo) {
		cartDAO.deleteCart(vo);
	}

	public int sum(CartVO vo) {
		return cartDAO.sum(vo);
	}

	// 장바구니 합계
	public int allSum(CartVO vo) {
		return cartDAO.allSum(vo);
	}

	// 스크랩하기
	public void addScrap(CartVO vo) {
		cartDAO.addScrap(vo);
	}
}