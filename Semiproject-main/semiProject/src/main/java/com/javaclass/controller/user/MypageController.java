package com.javaclass.controller.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaclass.domain.user.CustomerVO;
import com.javaclass.domain.user.OrderListVO;
import com.javaclass.domain.user.OrderVO;
import com.javaclass.domain.user.ReviewVO;
import com.javaclass.domain.user.ScrapVO;
import com.javaclass.service.user.MypageService;
import javax.servlet.http.HttpSession;
@RequestMapping("user")
@Controller
public class MypageController {
	
	
	@Autowired
	private MypageService mypageService;
	
	//개인정보 조회
	@RequestMapping(value="customerView.do")
	public String viewCustomer(Model model,  HttpSession session) {
		if(session.getAttribute("login") != null)
		{
			CustomerVO no = (CustomerVO) session.getAttribute("login");
			
			System.out.println("받아온 커스터머 넘버" + no.getCustomerNo());
			CustomerVO vo = mypageService.viewCustomer(no.getCustomerNo());
			model.addAttribute("view",vo);
			return "user/customerView";
		}
		else
		{	
			model.addAttribute("msg", "로그인후 이용 가능한 서비스입니다."); 
			model.addAttribute("url", "login.do");
		}
		return "user/alert";
	}
	
	//개인정보 수정
	@RequestMapping(value="customerUpdateview", method=RequestMethod.GET)
	public void customerUpdate(@RequestParam("customerNo") int customerNo, Model model) throws Exception {
		CustomerVO vo = mypageService.viewCustomer(customerNo);
		 model.addAttribute("view",vo);
	}
	//개인정보 수정
	@RequestMapping(value = "customerUpdateview", method = RequestMethod.POST)
	public String postUpdate(CustomerVO vo) throws Exception {
		mypageService.updateCustomer(vo);
		return "redirect:/user/customerView.do?customerNo=" + vo.getCustomerNo();
		//개인정보 조회페이지로 넘어가기
	}
	
	//주문 list+페이징
	@RequestMapping(value="orderList.do", method=RequestMethod.GET)
	public void orderList(HttpSession session,@RequestParam("num")int num, OrderVO order, Model model)throws Exception{
		

		CustomerVO cvo = (CustomerVO)session.getAttribute("login");
		order.setCustomerNo(cvo.getCustomerNo());
		
		int customerNo=order.getCustomerNo();
		int count= mypageService.countPage(customerNo); //게시물 총 갯수
		int postNum = 5; //한페이지에 출력할 게시물 갯수
		int lastNum = num*postNum;
		int pageNum=(int)Math.ceil((double)count/postNum);
		int displayPost = postNum*num-(postNum-1);
		
		List<OrderVO> orderList = mypageService.orderList(customerNo, displayPost, lastNum);
		
		model.addAttribute("orderList",orderList);
		model.addAttribute("pageNum",pageNum);
	}
	
	//스크랩 조회
	@RequestMapping(value="scrap.do", method=RequestMethod.GET)
	public void scarpList(HttpSession session,@RequestParam("num")int num,ScrapVO scrap, Model model)throws Exception{

		CustomerVO cvo = (CustomerVO)session.getAttribute("login");
		scrap.setCustomerNo(cvo.getCustomerNo());

		int customerNo=scrap.getCustomerNo();

		//페이징
		int count= mypageService.countPageScrap(customerNo); //게시물 총 갯수
		System.out.println("count: "+count);
		System.out.println("customerNo: "+customerNo);
		int postNum = 5; //한페이지에 출력할 게시물 갯수
		int lastNum = num*postNum;
		int pageNum=(int)Math.ceil((double)count/postNum);
		int displayPost = postNum*num-(postNum-1);

		//리스트 출력
		List<ScrapVO> scrapList = mypageService.scrapList(customerNo, displayPost, lastNum);

		model.addAttribute("scrapList",scrapList);
		model.addAttribute("pageNum",pageNum);
	}
	// 주문 상세 목록
	@RequestMapping(value = "orderListDetail.do", method = RequestMethod.GET)
	public void getOrderList(HttpSession session,  @RequestParam("orderNo") int orderNo, OrderListVO ovo, OrderVO order, Model model) throws Exception {
		
		CustomerVO cvo = (CustomerVO)session.getAttribute("login");
		String customerId = cvo.getCustomerId();
		
		ovo.setCustomerNo(cvo.getCustomerNo());
		order.setCustomerId(customerId);
		order.setOrderNo(orderNo);
		
		List<OrderListVO> orderDetail = mypageService.orderDetail(order);
		ArrayList<OrderListVO> ttt = new ArrayList<OrderListVO>();
		for(OrderListVO vvv : orderDetail) {
			vvv.setrCheck(mypageService.reviewCheck(vvv).getrCheck());
			ttt.add(vvv);
		}
		
		model.addAttribute("orderDetail", ttt);
		mypageService.reviewCheck(ovo).getrCheck();
		
		System.out.println("orderListDetail customerNo: "+ovo.getCustomerNo());
		System.out.println("orderListDetail orderDetailNumber: "+ovo.getOrderDetailNumber());
	}
	
	//리뷰작성 폼
	@RequestMapping(value="Review.do", method=RequestMethod.GET)
	public void Review(HttpSession session, int orderDetailNumber, int orderNo, OrderVO order, ReviewVO review, Model m)throws Exception{
		CustomerVO cvo = (CustomerVO)session.getAttribute("login");
		review.setCustomerNo(cvo.getCustomerNo());
		review.setOrderDetailNumber(orderDetailNumber);
		String customerId = cvo.getCustomerId();
		order.setCustomerId(customerId);
		order.setOrderNo(orderNo);
		
		OrderListVO orderDetail = mypageService.orderDetailReview(order);
		m.addAttribute("orderDetail", orderDetail);
	}
	
	//리뷰 insert
	@RequestMapping(value="writeReview.do", method=RequestMethod.GET)
	public String writeReview(HttpSession session, ReviewVO vo, Model m) throws Exception {
		CustomerVO cvo = (CustomerVO)session.getAttribute("login");
		vo.setrId(cvo.getCustomerId());
		  mypageService.writeReview(vo);
		  m.addAttribute("reviewView", vo);
		  return "redirect:/orderListDetail.do?orderNo="+vo.getOrderNo();
	}
	
	//리뷰 조회
	@RequestMapping(value="ReviewView.do", method=RequestMethod.GET)
	public void reviewView(HttpSession session, Model model,ReviewVO vo)throws Exception{
		CustomerVO cvo = (CustomerVO)session.getAttribute("login");
		vo.setCustomerNo(cvo.getCustomerNo());
		
		ReviewVO rv = mypageService.ReviewView(vo);
		model.addAttribute("reviewView",rv);
	}
	
	//스크랩삭제
	@RequestMapping
	public void scrapDelete(HttpSession session, ScrapVO vo)throws Exception{
			
	}
}
