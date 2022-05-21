package com.javaclass.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.user.CheckOutDAO;
import com.javaclass.domain.user.CheckOutVO;

@Service("checkOutService")
public class CheckOutServiceImpl implements CheckOutService{
	
	@Autowired
	private CheckOutDAO checkOutDAO;

	@Override
	public List<CheckOutVO> cartCheckOut(CheckOutVO vo) {
		return checkOutDAO.cartCheckOut(vo);
		
	}

	@Override
	public CheckOutVO productCheckOut(CheckOutVO vo) {
		return checkOutDAO.productCheckOut(vo);
	}

	@Override
	public void pBuyCheckCompl(CheckOutVO vo) {
		checkOutDAO.pBuyCheckCompl(vo);
		
	}

	@Override
	public void cBuyCheckCompl(CheckOutVO vo) {
		checkOutDAO.cBuyCheckCompl(vo);
	}
}
