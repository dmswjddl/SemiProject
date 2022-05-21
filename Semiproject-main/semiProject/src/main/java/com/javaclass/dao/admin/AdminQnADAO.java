package com.javaclass.dao.admin;

import java.util.List;

import com.javaclass.domain.user.QnAVO;


public interface AdminQnADAO {
	public void insertQnA(QnAVO vo);
	
	public QnAVO getQnA(QnAVO vo);
	
	public List<QnAVO> getQnAList();
	
	public void updateQnA(QnAVO vo);
	
	public QnAVO selectByPk(QnAVO vo);

}
