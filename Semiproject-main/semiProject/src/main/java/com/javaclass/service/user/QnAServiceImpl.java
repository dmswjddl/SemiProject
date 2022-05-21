package com.javaclass.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.user.QnADAO;
import com.javaclass.domain.user.QnAVO;


@Service("qnAService")
public class QnAServiceImpl implements QnAService{
	
	@Autowired
	private QnADAO qnADAO;
	
	public void insertQnA(QnAVO vo) {
		qnADAO.insertQnA(vo);
	}
	
	
	public QnAVO getQnA(QnAVO vo) {
		return qnADAO.getQnA(vo);
	}
	
	public int count() throws Exception {
		return qnADAO.count();
	}

	public List<QnAVO> QnAListPage(int displayPost, int postNum) throws Exception {
		System.out.println("페이징 서비스");
		return qnADAO.QnAListPage(displayPost, postNum);
	}
}
