package com.javaclass.service.user;

import com.javaclass.domain.user.CustomerVO;

public interface MainService {
	
	public CustomerVO login(CustomerVO vo) throws Exception;

	public void signUp(CustomerVO vo);

	public CustomerVO idCheck(CustomerVO vo);
}
