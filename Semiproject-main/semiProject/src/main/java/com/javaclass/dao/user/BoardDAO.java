package com.javaclass.dao.user;

import java.util.List;

import com.javaclass.domain.user.BoardVO;


public interface BoardDAO {
	
	public BoardVO getBoard(BoardVO vo) ;
	
	public BoardVO selectByPk(BoardVO vo);
	
	public int count() throws Exception;

	public List<BoardVO> noticeListPage(int displayPost, int postNum) throws Exception;
}
