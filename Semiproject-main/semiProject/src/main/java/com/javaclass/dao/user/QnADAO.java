package com.javaclass.dao.user;

import java.util.List;

import com.javaclass.domain.user.QnAVO;


public interface QnADAO {
	public void insertQnA(QnAVO vo);
	
	public QnAVO getQnA(QnAVO vo);
	
	//페이징, qna 총 갯수
	public int count() throws Exception;
	
	//qna페이징 + qna목록 출력
	public List<QnAVO> QnAListPage(int displayPost, int postNum) throws Exception;
	

}
