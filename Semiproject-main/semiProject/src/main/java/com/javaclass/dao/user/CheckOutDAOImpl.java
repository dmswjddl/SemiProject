package com.javaclass.dao.user;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.user.CheckOutVO;

@Repository("checkOutDAO")
public class CheckOutDAOImpl implements CheckOutDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<CheckOutVO> cartCheckOut(CheckOutVO vo) {
		
		return mybatis.selectList("CheckOutDAO.cartInfo", vo);
	}

	@Override
	public CheckOutVO productCheckOut(CheckOutVO vo) {
		return mybatis.selectOne("CheckOutDAO.productInfo",vo);
	}

	@Override
	public void pBuyCheckCompl(CheckOutVO vo) {
		mybatis.insert("CheckOutDAO.pBuyComplete",vo);
		mybatis.update("CheckOutDAO.pBuyCount",vo);
	}

	@Override
	public void cBuyCheckCompl(CheckOutVO vo) {
		mybatis.insert("CheckOutDAO.cBuyComplete1",vo);
		mybatis.update("CheckOutDAO.cBuyComplete2",vo);
		mybatis.update("CheckOutDAO.cBuyCount",vo);
		mybatis.delete("CheckOutDAO.cartDelete",vo);
	}
}
