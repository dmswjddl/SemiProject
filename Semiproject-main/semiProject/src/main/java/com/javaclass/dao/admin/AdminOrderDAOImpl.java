package com.javaclass.dao.admin;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.admin.AdminOrderVO;

@Repository("orderDAO")
public class AdminOrderDAOImpl implements AdminOrderDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public List<AdminOrderVO> getOrderList(){
		System.out.println("===> Mybatis getOrderList() 호출");
		return mybatis.selectList("OrderDAO.getOrderList");
	}


	public int updateShipping(AdminOrderVO vo) {

		return mybatis.update("OrderDAO.updateShipping",vo);
	}
	
	public List<AdminOrderVO> orderCheckList(HashMap map) {
		System.out.println("===> Mybatis orderCheckList() 호출");
		return mybatis.selectList("OrderDAO.searchOrderList", map);
	}
	
	public List<AdminOrderVO> searchOrderList(HashMap map) {
		System.out.println("===> Mybatis searchOrderList() 호출");
		return mybatis.selectList("OrderDAO.searchOrderList", map);
	}
	
}
