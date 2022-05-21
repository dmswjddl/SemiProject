package com.javaclass.service.user;

import java.util.List;

import com.javaclass.domain.user.BoardVO;


public interface BoardService {
	// 글 상세 조회
	BoardVO getBoard(BoardVO vo);

	//글 수정 폼
	BoardVO selectByPK(BoardVO vo);
	
	//게시물 총 갯수
	public int count() throws Exception;
		
	//글 목록 + 페이징
	List<BoardVO> noticeListPage(int displayPost, int postNum) throws Exception;
}
