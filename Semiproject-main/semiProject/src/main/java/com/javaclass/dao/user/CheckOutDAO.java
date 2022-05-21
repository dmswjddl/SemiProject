package com.javaclass.dao.user;

import java.util.List;

import com.javaclass.domain.user.CheckOutVO;

public interface CheckOutDAO {

	List<CheckOutVO> cartCheckOut(CheckOutVO vo);

	CheckOutVO productCheckOut(CheckOutVO vo);

	void pBuyCheckCompl(CheckOutVO vo);

	void cBuyCheckCompl(CheckOutVO vo);
}
