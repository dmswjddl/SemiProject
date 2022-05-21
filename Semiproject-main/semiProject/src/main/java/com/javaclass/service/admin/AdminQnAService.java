package com.javaclass.service.admin;

import java.util.List;

import com.javaclass.domain.user.QnAVO;


public interface AdminQnAService {
	
	//qna 등록
	void insertQnA(QnAVO vo);
	
	//qna 글 목록 조회
	List<QnAVO> getQnAList();
	
	//qna 상세 내용 보기
	QnAVO getQnA(QnAVO vo);
	
	//qna 수정
	void updateQnA(QnAVO vo);
	
	
	QnAVO selectByPk(QnAVO vo);
	
}
