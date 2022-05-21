package com.javaclass.service.admin;

import java.util.HashMap;
import java.util.List;

import com.javaclass.domain.admin.AdminOrderVO;


public interface AdminOrderService {
	//구매품목 목록 조회
	List<AdminOrderVO> getOrderList();
	
	//배송상태설정(배송중,배송완료)
	int updateShipping(AdminOrderVO vo);
	
	//구매품목 목록 조회
	List<AdminOrderVO> orderCheckList(HashMap map);

	List<AdminOrderVO> searchOrderList(HashMap map);
	
	
}
