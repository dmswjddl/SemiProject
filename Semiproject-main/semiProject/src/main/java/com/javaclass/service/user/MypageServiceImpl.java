package com.javaclass.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.user.MypageDAO;
import com.javaclass.domain.user.CustomerVO;
import com.javaclass.domain.user.OrderListVO;
import com.javaclass.domain.user.OrderVO;
import com.javaclass.domain.user.ReviewVO;
import com.javaclass.domain.user.ScrapVO;

@Service("mypageService")
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageDAO mypageDAO;
	
	@Override //개인정보 수정
	public void updateCustomer(CustomerVO vo) throws Exception{
		mypageDAO.updateCustomer(vo); 
	}
	
	@Override //개인정보 조회
	public CustomerVO viewCustomer(int customerNo) {
		return mypageDAO.viewCustomer(customerNo);
	}

	@Override// 주문list count
	public int countPage(int customerNo) throws Exception{
		return mypageDAO.countPage(customerNo);
	}
	 
	@Override// 스크랩 list count
	public int countPageScrap(int customerNo) throws Exception{
		return mypageDAO.countPageScrap(customerNo);
	}
	
	@Override //주문 list 조회+페이징
	public List<OrderVO> orderList(int customerNo, int displayPost, int lastNum)throws Exception{
		return mypageDAO.orderList(customerNo, displayPost, lastNum);
	}
	@Override //스크랩 조회
	public List<ScrapVO> scrapList(int customerNo, int displayPost, int lastNum)throws Exception{
		return mypageDAO.scrapList(customerNo,displayPost,lastNum);
	}
	@Override //주문 상세조회
	public List<OrderListVO> orderDetail(OrderVO order) throws Exception{
		return mypageDAO.orderDetail(order);
	}
	
	@Override //리뷰작성 폼
	public OrderListVO orderDetailReview(OrderVO order) throws Exception {
		return mypageDAO.orderDetailReview(order);
	}
	
	@Override //리뷰 insert
	public void writeReview(ReviewVO vo) throws Exception{
		mypageDAO.writeReview(vo);
	}
	
	@Override //리뷰 조회
	public ReviewVO ReviewView(ReviewVO vo) throws Exception{
		return mypageDAO.ReviewView(vo);
	}
	
	@Override //리뷰 여부
	public OrderListVO reviewCheck(OrderListVO vo) {
		return mypageDAO.reviewCheck(vo);
	}
}
