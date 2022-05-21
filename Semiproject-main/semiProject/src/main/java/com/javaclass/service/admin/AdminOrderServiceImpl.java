package com.javaclass.service.admin;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.admin.AdminOrderDAO;
import com.javaclass.domain.admin.AdminOrderVO;


@Service("orderService")
public class AdminOrderServiceImpl implements AdminOrderService{
	
	@Autowired
	private AdminOrderDAO orderDAO;
	
	//구매품목 목록 조회
	public List<AdminOrderVO> getOrderList(){
		return orderDAO.getOrderList();
	}
	
	//배송상태설정(배송중,배송완료)
	public int updateShipping(AdminOrderVO vo) {
		return orderDAO.updateShipping(vo);
	}
	
	//구매품목 목록 조회(날짜선택)
	public List<AdminOrderVO> orderCheckList(HashMap map){
		return orderDAO.orderCheckList(map);
	}

	//구매품목 검색(주문번호, 주문자)
	@Override
	public List<AdminOrderVO> searchOrderList(HashMap map) {
		// TODO Auto-generated method stub
		return orderDAO.searchOrderList(map);
	}

}
