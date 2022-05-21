package com.javaclass.dao.user;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.user.QnAVO;


@Repository("qnADAO")
public class QnADAOImpl implements QnADAO {
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertQnA(QnAVO vo) {
		System.out.println("===> Mybatis insertQnA() 호출");
		mybatis.insert("QnADAO.insertQnA", vo);
	}
	
	public QnAVO getQnA(QnAVO vo) {
		System.out.println("===> Mybatis getQnA() 호출");
		return (QnAVO)mybatis.selectOne("QnADAO.getQnA",vo);
	}
	

	
	public int count() throws Exception {
		return mybatis.selectOne("QnADAO.count");
	}
	
	public List<QnAVO> QnAListPage(int displayPost, int postNum) throws Exception{
		System.out.println("페이징처리 DAO");
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return mybatis.selectList("QnADAO.qnAListPage", data);
	}


}
