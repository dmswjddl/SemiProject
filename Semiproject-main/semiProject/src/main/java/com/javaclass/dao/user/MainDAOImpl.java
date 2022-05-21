package com.javaclass.dao.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.user.CustomerVO;

@Repository("mainDAO")
public class MainDAOImpl implements MainDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public CustomerVO login(CustomerVO vo) {
		return mybatis.selectOne("MainDAO.loginCheck",vo);
	}

	public void signUp(CustomerVO vo) {
		mybatis.insert("MainDAO.createAccount",vo);
	}

	@Override
	public CustomerVO idCheck(CustomerVO vo) {
		
		System.out.println(vo.getCustomerId()+">>DAO");
		CustomerVO cvo = mybatis.selectOne("MainDAO.idCheck",vo);
		if(cvo!=null)
			return vo;
		else
			return cvo;
		
	}
}
