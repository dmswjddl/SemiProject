package com.javaclass.controller.user;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaclass.domain.user.CheckOutVO;
import com.javaclass.domain.user.CustomerVO;
import com.javaclass.service.user.CheckOutService;

@RequestMapping("/user")
@Controller
public class CheckOutController {

	@Autowired
	private CheckOutService checkOutService;
	
	@RequestMapping("/checkoutCart.do")
	public String CheckOutCart(CheckOutVO vo, Model m, HttpSession session){	//Cart에서 구매페이지로 넘어갔을 경우
		CustomerVO no = (CustomerVO)session.getAttribute("login");	//세션값 로그인에 담긴 customerVO의 값의
		
		vo.setCustomerNo(no.getCustomerNo());						//customerNo를 가져와서 no.getCustomerNo를 vo의 CustomerNo에 set해줌
		/*
		 * m.addAttribute("cart", checkOutService.cartCheckOut(vo)); //mapper에서 처리하기위한
		 * vo를 인자로 넣어줌
		 */		
		m.addAttribute("cart", checkOutService.cartCheckOut(vo));
		
		return "user/checkout";
	}
	
	@RequestMapping("/checkoutProduct.do")
	public String CheckOutProduct(CheckOutVO vo, Model m, @RequestParam("pGet") int pGet) {
		m.addAttribute("pGet", pGet);
		m.addAttribute("product", checkOutService.productCheckOut(vo));
		return "user/checkout";
	}
	
	@RequestMapping("/pBuy.do")
		public String CheckOutPComplete(CheckOutVO vo) {
		checkOutService.pBuyCheckCompl(vo);
		return "user/checkOutComplete";
	}
	
	@RequestMapping("/cartBuy.do")
		public String CheckOutCComplete(CheckOutVO vo) {
		checkOutService.cBuyCheckCompl(vo);
		return "user/checkOutComplete";
	}
}
