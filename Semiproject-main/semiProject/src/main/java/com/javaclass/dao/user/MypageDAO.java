package com.javaclass.dao.user;

import java.util.List;

import com.javaclass.domain.user.CustomerVO;
import com.javaclass.domain.user.OrderListVO;
import com.javaclass.domain.user.OrderVO;
import com.javaclass.domain.user.ReviewVO;
import com.javaclass.domain.user.ScrapVO;

public interface MypageDAO {
	
	public void updateCustomer(CustomerVO vo) throws Exception; //개인정보 수정
	
	public CustomerVO viewCustomer(int customerNo); //개인정보 조회
	
	public int countPage(int customerNo) throws Exception; //주문목록  List 총 갯수  
	public int countPageScrap(int customerNo) throws Exception; //스크랩  List 총 갯수  
	
	public List<OrderVO> orderList(int customerNo, int displayPost, int lastNum) throws Exception; //주문 list+페이징
	public List<OrderListVO> orderDetail(OrderVO order) throws Exception; //주문 상세보기
	
	public List<ScrapVO> scrapList(int customerNo, int displayPost, int lastNum)throws Exception; //스크랩 list+페이징
	
	public OrderListVO orderDetailReview(OrderVO order)throws Exception; //리뷰작성페이지
	public void writeReview(ReviewVO vo) throws Exception;//리뷰작성
	public ReviewVO ReviewView(ReviewVO vo)throws Exception; //작성한 리뷰보기
	public OrderListVO reviewCheck(OrderListVO vo);// 리뷰 여부
}
