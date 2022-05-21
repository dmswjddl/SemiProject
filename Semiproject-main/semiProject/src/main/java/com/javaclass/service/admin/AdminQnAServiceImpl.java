package com.javaclass.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.admin.AdminQnADAO;
import com.javaclass.domain.user.QnAVO;


@Service("adminqnAService")
public class AdminQnAServiceImpl implements AdminQnAService{
	
	@Autowired
	private AdminQnADAO adminqnADAO;
	
	public void insertQnA(QnAVO vo) {
		adminqnADAO.insertQnA(vo);
	}
	
	public List<QnAVO> getQnAList() {
		return adminqnADAO.getQnAList();
	}
	
	public QnAVO getQnA(QnAVO vo) {
		return adminqnADAO.getQnA(vo);
	}
	
	public void updateQnA(QnAVO vo) {
		adminqnADAO.updateQnA(vo);
	}
	
	public QnAVO selectByPk(QnAVO vo) {
		return adminqnADAO.selectByPk(vo);
	}

}
