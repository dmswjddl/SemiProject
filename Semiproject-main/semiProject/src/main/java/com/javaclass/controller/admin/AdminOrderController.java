package com.javaclass.controller.admin;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.domain.admin.AdminOrderVO;
import com.javaclass.service.admin.AdminOrderService;

@RequestMapping("admin")
@Controller
public class AdminOrderController {
	
	@Autowired
	private AdminOrderService orderService;
	
	//배송상태 
	 @RequestMapping(value="updateShipping.do", produces="application/text;charset=utf-8")
	 @ResponseBody
	 public String updateShipping(AdminOrderVO vo) {
		 int updateShipping = orderService.updateShipping(vo);
		 System.out.println(vo.getOrderCheck() + "// " + vo.getOrderDetailNumber() );
		 String message = "";
		 if(vo.getOrderCheck().equals("N")) {
			 message = "y";
		 }
		 else
			 message="n";
		 System.out.println("message"+message);
		 return message;
	 }
	 
	//상품목록 검색
	@RequestMapping("orderList.do")
	public void searchOrderList(String searchCondition, String searchKeyword, Model m) {
		
		HashMap map = new HashMap();
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);
		
		System.out.println("searchCondition : " + searchCondition);
		System.out.println("searchKeyword : " + searchKeyword);
		
		List<AdminOrderVO> list = orderService.searchOrderList(map);
		m.addAttribute("orderList",list);
	}
	
	//구매품목목록 날짜 검색
	@RequestMapping("orderCheckList.do")
	public String searchOrderCheckList(String startDate, String endDate, Model m) {
		
		HashMap map = new HashMap();
		
		map.put("startDate", startDate);
		map.put("endDate", endDate);
		System.out.println("startDate : " + startDate);
		System.out.println("endDate : " + endDate);
				
		List<AdminOrderVO> list = orderService.searchOrderList(map);
		m.addAttribute("orderList",list);
		return "admin/orderList";
	}
 
}