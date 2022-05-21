package com.javaclass.dao.admin;

import java.util.List;

import com.javaclass.domain.user.BoardVO;

public interface AdminBoardDAO {
	public void insertBoard(BoardVO vo);

	public void updateBoard(BoardVO vo) ;

	public void deleteBoard(BoardVO vo);

	public BoardVO getBoard(BoardVO vo) ;

	public List<BoardVO> getBoardList() ;	

	public BoardVO selectByPk(BoardVO vo);

}
