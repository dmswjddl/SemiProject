package com.javaclass.service.user;

import java.util.List;

import com.javaclass.domain.user.QnAVO;

public interface QnAService {
	
	//qna등록
	void insertQnA(QnAVO vo);
	
	
	//qna 상세 내용 보기
	QnAVO getQnA(QnAVO vo);
	
	//게시물 총 갯수
	public int count() throws Exception;
	
	//qna글목록 + qna페이징
	List<QnAVO> QnAListPage(int displayPost, int postNum) throws Exception;
	
}
