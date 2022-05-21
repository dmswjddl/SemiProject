package com.javaclass.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.user.CartVO;
import com.javaclass.domain.user.CustomerVO;
import com.javaclass.service.user.CartService;

@RequestMapping("user")
@Controller
public class CartController {

	@Autowired
	private CartService cartService;

	// 장바구니에 추가
	@RequestMapping("addCart.do")
	public String addCart(CartVO vo, HttpSession session, Model m) {
		if(session.getAttribute("login") !=null) {
		CustomerVO vs = (CustomerVO) session.getAttribute("login");
		vo.setCustomerNo(vs.getCustomerNo());
		cartService.addCart(vo);
		return "redirect:cartList.do";
		}
		else {
			m.addAttribute("msg", "로그인후 이용 가능한 서비스입니다."); 
			m.addAttribute("url", "login.do");
		}
		return "user/alert";
	}

	// 장바구니에 추가 후 리스트 호출
	@RequestMapping("cartList.do")
	public String cartList(CartVO vo, Model m, HttpSession session) {
		if(session.getAttribute("login") != null)
		{
			m.addAttribute("cartList",cartService.cartList(vo));
			
			return "user/cartList";
		}
		else
		{	
			m.addAttribute("msg", "로그인후 이용 가능한 서비스입니다."); 
			m.addAttribute("url", "login.do");
		}
		return "user/alert";
	}

	// 장바구니에 물품 삭제
	@RequestMapping("deleteCart.do")
	public String deleteCart(CartVO vo) {
		cartService.deleteCart(vo);
		return "redirect:cartList.do";
	}

	// 스크랩하기
	@RequestMapping("addScrap.do")
	public void addScarap(CartVO vo,HttpSession session) {
		CustomerVO vs = (CustomerVO) session.getAttribute("login");
		vo.setCustomerNo(vs.getCustomerNo());
		cartService.addScrap(vo);
	}

}

