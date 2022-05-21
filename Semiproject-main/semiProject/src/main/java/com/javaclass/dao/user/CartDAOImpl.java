package com.javaclass.dao.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.user.CartVO;

@Repository("cartDAO")
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// 장바구니에 추가하기
	public void addCart(CartVO vo) {
		System.out.println("===> 장바구니에 추가합니다.");
		mybatis.insert("CartDAO.addCart", vo);
	}

	// 사용자 장바구니 조회
	public List<CartVO> cartList(CartVO vo) {
		System.out.println("===> 이전 기록을 불러옵니다.");
		return mybatis.selectList("CartDAO.cartList", vo);
	}

	// 장바구니 개별 삭제
	public void deleteCart(CartVO vo) {
		System.out.println("===> 장바구니에서 삭제합니다.");
		mybatis.delete("CartDAO.deleteCart", vo);
	}

	// 상세 페이지 합계
	public int sum(CartVO vo) {
		System.out.println("===> 액수를 확인합니다.");
		return mybatis.selectOne("CartDAO.sum", vo);
	}

	// 장바구니 합게
	public int allSum(CartVO vo) {
		System.out.println("===> 액수를 확인합니다.");
		return mybatis.selectOne("CartDAO.allsum", vo);
	}

	// 스크랩하기
	public void addScrap(CartVO vo) {
		System.out.println("===> 찜 목록에 추가합니다.");
		mybatis.insert("CartDAO.addScrap", vo);
	}
}

