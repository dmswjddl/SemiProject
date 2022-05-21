package com.javaclass.dao.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.user.BoardVO;


@Repository("adminBoardDAO")
public class AdminBoardDAOImpl implements AdminBoardDAO{
	@Autowired
	private SqlSessionTemplate mybatis;
	
	public void insertBoard(BoardVO vo) {
		System.out.println("===> Mybatis insertBoard() 호출");
		mybatis.insert("AdminBoardDAO.insertBoard", vo);
	}

	public void updateBoard(BoardVO vo) {
		System.out.println("===> Mybatis updateBoard() 호출");
		mybatis.update("AdminBoardDAO.updateBoard", vo);
	}

	public void deleteBoard(BoardVO vo) {
		System.out.println("===> Mybatis deleteBoard() 호출");
		mybatis.delete("AdminBoardDAO.deleteBoard", vo);
	}

	public BoardVO getBoard(BoardVO vo) {
		System.out.println("===> Mybatis getBoard() 호출");
		return (BoardVO) mybatis.selectOne("AdminBoardDAO.getBoard", vo);
	}

	public List<BoardVO> getBoardList() {
		System.out.println("===> Mybatis getBoardList() 호출");
		return mybatis.selectList("AdminBoardDAO.getBoardList");//mapper에 BoardDAO id가getBoardList
	}


	@Override
	public BoardVO selectByPk(BoardVO vo) {
		System.out.println("===> Mybatis modifyBoard() 호출");
		return mybatis.selectOne("AdminBoardDAO.selectBoard", vo);
	}

}
