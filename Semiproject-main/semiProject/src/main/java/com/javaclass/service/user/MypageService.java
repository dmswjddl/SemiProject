package com.javaclass.service.user;


import java.util.List;

import com.javaclass.domain.user.CustomerVO;
import com.javaclass.domain.user.OrderListVO;
import com.javaclass.domain.user.OrderVO;
import com.javaclass.domain.user.ReviewVO;
import com.javaclass.domain.user.ScrapVO;

public interface MypageService {


	public void updateCustomer(CustomerVO vo) throws Exception; //개인정보 수정
	public CustomerVO viewCustomer(int customerNo);//개인정보 조회
	
	public int countPage(int customerNo) throws Exception; // 주문 list count
	public int countPageScrap(int customerNo) throws Exception; //스크랩 list count
	
	public List<OrderVO> orderList(int customerNo, int displayPost, int lastNum)throws Exception; //주문 list 조회
	public List<OrderListVO> orderDetail(OrderVO order) throws Exception; // 주문 상세조회
	
	public OrderListVO orderDetailReview(OrderVO order) throws Exception;// 리뷰작성 폼
	public void writeReview(ReviewVO vo) throws Exception;// 리뷰 insert
	public ReviewVO ReviewView(ReviewVO vo) throws Exception;//리뷰 조회
	public OrderListVO reviewCheck(OrderListVO vo); //리뷰 작성 여부
	
	public List<ScrapVO> scrapList(int customerNo, int displayPost, int lastNum)throws Exception; //스크랩 list 조회
}
