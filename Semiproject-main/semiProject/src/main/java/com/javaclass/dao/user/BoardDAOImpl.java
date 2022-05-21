package com.javaclass.dao.user;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.user.BoardVO;


@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO{
	@Autowired
	private SqlSessionTemplate mybatis;


	public BoardVO getBoard(BoardVO vo) {
		return (BoardVO) mybatis.selectOne("BoardDAO.getBoard", vo);
	}

	
	public BoardVO selectByPk(BoardVO vo) {
		return mybatis.selectOne("BoardDAO.selectBoard", vo);
	}
	
	public int count() throws Exception {
		return mybatis.selectOne("BoardDAO.count");
	}
	
	public List<BoardVO> noticeListPage(int displayPost, int postNum) throws Exception{
		HashMap<String, Integer> data = new HashMap<String, Integer>();
		
		data.put("displayPost", displayPost);
		data.put("postNum", postNum);
		
		return mybatis.selectList("BoardDAO.noticeListPage", data);
	}

}
