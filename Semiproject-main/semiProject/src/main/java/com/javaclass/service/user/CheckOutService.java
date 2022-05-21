package com.javaclass.service.user;

import java.util.List;

import com.javaclass.domain.user.CheckOutVO;

public interface CheckOutService {

	List<CheckOutVO> cartCheckOut(CheckOutVO vo);

	CheckOutVO productCheckOut(CheckOutVO vo);

	void pBuyCheckCompl(CheckOutVO vo);
	
	void cBuyCheckCompl(CheckOutVO vo);
}
