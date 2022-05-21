package com.javaclass.dao.user;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.user.CustomerVO;
import com.javaclass.domain.user.OrderListVO;
import com.javaclass.domain.user.OrderVO;
import com.javaclass.domain.user.ReviewVO;
import com.javaclass.domain.user.ScrapVO;

@Repository("mypageDAO")
public class MypageDAOImpl implements MypageDAO{
	@Autowired
	private SqlSession mybatis;
	
	
	//개인정보 수정
	@Override
	public void updateCustomer(CustomerVO vo) throws Exception {
		 mybatis.update("MyPageDAO.updateCustomer",vo);
	}
	
	//개인정보 조회
	@Override
	public CustomerVO viewCustomer(int customerNo) {
		return mybatis.selectOne("MyPageDAO.viewCustomer",customerNo);
	}
	
	@Override  //주문 list 갯수
	public int countPage(int customerNo) throws Exception{
		return mybatis.selectOne("MyPageDAO.countPage",customerNo);
	}
	
	@Override //스크랩list 갯수
	public int countPageScrap(int customerNo) throws Exception{
		return mybatis.selectOne("MyPageDAO.countPageScrap",customerNo);
	}
	
	@Override //주문 list+페이징
	public List<OrderVO> orderList(int customerNo, int displayPost, int lastNum)throws Exception{
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("customerNo", customerNo);
		data.put("displayPost",displayPost);
		data.put("lastNum",lastNum);
		
		return mybatis.selectList("MyPageDAO.orderList",data);
	}
	@Override //스크랩 list+페이징
	public List<ScrapVO> scrapList(int customerNo, int displayPost, int lastNum)throws Exception{
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("customerNo", customerNo);
		data.put("displayPost",displayPost);
		data.put("lastNum",lastNum);
		
		return mybatis.selectList("MyPageDAO.scrapView",data);
	}
	@Override //주문상세페이지
	public List<OrderListVO> orderDetail(OrderVO order)throws Exception{
		return mybatis.selectList("MyPageDAO.orderDetail",order);
	}
	
	@Override //리뷰작성 폼에 나오는 상품
	public OrderListVO orderDetailReview(OrderVO order)throws Exception{
		return mybatis.selectOne("MyPageDAO.orderDetailReview",order);
	}
	
	@Override //리뷰작성
	 public void writeReview(ReviewVO vo) throws Exception{
		mybatis.insert("MyPageDAO.writeReview", vo);
	}
	
	@Override//리뷰조회
	public ReviewVO ReviewView(ReviewVO vo)throws Exception{
		return mybatis.selectOne("MyPageDAO.reviewView",vo);
	}
	
	@Override // 리뷰여부
	public OrderListVO reviewCheck(OrderListVO vo) {
		return mybatis.selectOne("MyPageDAO.reviewCheck",vo);
	}
	
}
