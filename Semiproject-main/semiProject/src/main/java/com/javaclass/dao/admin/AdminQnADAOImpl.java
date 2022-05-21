package com.javaclass.dao.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.user.QnAVO;


@Repository("adminqnADAO")
public class AdminQnADAOImpl implements AdminQnADAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertQnA(QnAVO vo) {
		System.out.println("===> Mybatis insertQnA() 호출");
		mybatis.insert("AdminQnADAO.insertQnA", vo);
	}
	
	public QnAVO getQnA(QnAVO vo) {
		System.out.println("===> Mybatis getQnA() 호출");
		return (QnAVO)mybatis.selectOne("AdminQnADAO.getQnA",vo);
	}
	
	public List<QnAVO> getQnAList() {
		System.out.println("===> Mybatis getQnAList() 호출");
		return mybatis.selectList("AdminQnADAO.getQnAList");
	}
	
	public void updateQnA(QnAVO vo) {
		System.out.println("===> Mybatis updateQnA() 호출");
		System.out.println(vo.getqNo());
		mybatis.update("AdminQnADAO.updateQnA",vo);
	}
	
	public QnAVO selectByPk(QnAVO vo) {
		System.out.println("===> Mybatis selectByPk() 호출");
		return mybatis.selectOne("AdminQnADAO.getQnA",vo);
	}
}
