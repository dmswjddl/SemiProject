package com.javaclass.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.admin.AdminBoardDAO;
import com.javaclass.domain.user.BoardVO;


@Service("adminBoardService")
public class AdminBoardServiceImpl implements AdminBoardService{
	@Autowired 
	private AdminBoardDAO adminBoardDAO;

	public void insertBoard(BoardVO vo) {

		adminBoardDAO.insertBoard(vo);
	}

	public void updateBoard(BoardVO vo) {
		adminBoardDAO.updateBoard(vo);
	}

	public void deleteBoard(BoardVO vo) {
		adminBoardDAO.deleteBoard(vo);
	}

	public BoardVO getBoard(BoardVO vo) {
		return adminBoardDAO.getBoard(vo);
	}

	public List<BoardVO> getBoardList() {
		return adminBoardDAO.getBoardList();
	}
	

	public BoardVO selectByPK(BoardVO vo) {
		return adminBoardDAO.selectByPk(vo);
		
	}

}
