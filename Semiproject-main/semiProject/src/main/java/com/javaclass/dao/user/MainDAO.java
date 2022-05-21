package com.javaclass.dao.user;

import com.javaclass.domain.user.CustomerVO;

public interface MainDAO {

	public CustomerVO login(CustomerVO vo) throws Exception;
	
	public void signUp(CustomerVO vo);

	public CustomerVO idCheck(CustomerVO vo);
}
