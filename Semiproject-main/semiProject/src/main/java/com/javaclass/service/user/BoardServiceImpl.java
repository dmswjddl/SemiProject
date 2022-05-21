package com.javaclass.service.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.user.BoardDAO;
import com.javaclass.domain.user.BoardVO;


@Service("boardService")
public class BoardServiceImpl implements BoardService{
	@Autowired 
	private BoardDAO boardDAO;

	public BoardVO getBoard(BoardVO vo) {
		return boardDAO.getBoard(vo);
	}


	public BoardVO selectByPK(BoardVO vo) {
		return boardDAO.selectByPk(vo);
	}
	
	public int count() throws Exception {
		return boardDAO.count();
	}

	public List<BoardVO> noticeListPage(int displayPost, int postNum) throws Exception {
		return boardDAO.noticeListPage(displayPost, postNum);
	}
}
