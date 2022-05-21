package com.javaclass.service.admin;

import java.util.List;

import com.javaclass.domain.user.BoardVO;


public interface AdminBoardService {
	// 글 등록
	void insertBoard(BoardVO vo);

	// 글 수정완료
	void updateBoard(BoardVO vo);

	// 글 삭제
	void deleteBoard(BoardVO vo);

	// 글 상세 조회
	BoardVO getBoard(BoardVO vo);

	// 글 목록 조회
	List<BoardVO> getBoardList();
	
	//글 수정 폼 
	BoardVO selectByPK(BoardVO vo);

}
