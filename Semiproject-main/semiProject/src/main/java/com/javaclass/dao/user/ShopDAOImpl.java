package com.javaclass.dao.user;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.user.ShopVO;

@Repository("shopDAO")
public class ShopDAOImpl implements ShopDAO {

	@Autowired
	private SqlSessionTemplate mybatis;

	// 물품 상세보기
	public ShopVO getDetail(ShopVO vo) {
		System.out.println("===> Mybatis getDetail 호출");
		return mybatis.selectOne("ShopDAO.getDetail", vo);
	}

	// 리뷰
	/*public ShopVO rStar(ShopVO vo) {
		System.out.println("===> Mybatis Review Star 호출");
		return mybatis.selectOne("ShopDAO.rStar",vo);
	}*/

	// 게시물 목록 + 페이징
	public List<ShopVO> productListPage(int displayPost, int postNum) throws Exception{
		System.out.println("다오 지나갑니다");
		HashMap<String, Integer> data = new HashMap<String, Integer>();

		data.put("displayPost", displayPost);
		data.put("postNum", postNum);

		return mybatis.selectList("ShopDAO.productListPage", data);
	}

	// 카테고리
	public List<ShopVO> category() {
		System.out.println("===> 카테고리 대분류 출력");
		return mybatis.selectList("ShopDAO.category");
	}

	public List<ShopVO> smallCate(){
		System.out.println("===> 카테고리 중분류 출력");
		return mybatis.selectList("ShopDAO.smallCate");
	}

	// 게시물 총 갯수
	@Override
	public int count() throws Exception{
		return mybatis.selectOne("ShopDAO.count");
	}

}

