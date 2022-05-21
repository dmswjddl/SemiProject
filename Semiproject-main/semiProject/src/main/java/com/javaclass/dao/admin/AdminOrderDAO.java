package com.javaclass.dao.admin;

import java.util.HashMap;
import java.util.List;

import com.javaclass.domain.admin.AdminOrderVO;

public interface AdminOrderDAO {
	public List<AdminOrderVO> getOrderList();
	
	public int updateShipping(AdminOrderVO vo);
	
	public List<AdminOrderVO> orderCheckList(HashMap map);
	
	public List<AdminOrderVO> searchOrderList(HashMap map);
}
