package com.javaclass.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.user.ShopDAOImpl;
import com.javaclass.domain.user.ShopVO;

@Service("shopService")
public  class ShopServiceImpl implements ShopService {

	@Autowired
	private ShopDAOImpl shopDAO;

	// 상품 상세보기
	public ShopVO getDetail(ShopVO vo) {
		return shopDAO.getDetail(vo);
	}

	// 상품 리뷰 별점
	/*public ShopVO rStar(ShopVO vo) {
		return shopDAO.rStar(vo);
	}*/

	// 상품목록 + 페이징
	@Override
	public List<ShopVO> productListPage(int displayPost, int postNum) throws Exception{
		System.out.println("서비스 지나갑니다");
		return shopDAO.productListPage(displayPost, postNum);
	}

	// 카테고리 목록
	public List<ShopVO> category(){
		return shopDAO.category();
	}

	public List<ShopVO> smallCate(){
		return shopDAO.smallCate();
	}

	// 게시물 총 갯수
	@Override
	public int count() throws Exception{
		return shopDAO.count();
	}

}