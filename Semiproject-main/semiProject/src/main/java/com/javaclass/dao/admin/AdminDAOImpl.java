package com.javaclass.dao.admin;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.admin.AdminVO;
import com.javaclass.domain.admin.CategoryVO;
import com.javaclass.domain.admin.ChartsVO;

@Repository("adminDAO")
public class AdminDAOImpl implements AdminDAO{
	
	@Autowired
	private SqlSessionTemplate mybatis;

	@Override
	public List<ChartsVO> pieCharts() {
		return mybatis.selectList("ChartsDAO.pieCharts");
	}

	@Override
	public List<ChartsVO> barCharts() {
		return mybatis.selectList("ChartsDAO.barCharts");
	}

	@Override
	public List<ChartsVO> graphCharts() {
		
		return mybatis.selectList("ChartsDAO.graphCharts");
	}

	@Override
	public List<ChartsVO> graphDayCharts(ChartsVO vo) {
		return mybatis.selectList("ChartsDAO.graphDayCharts",vo);
	}

	@Override
	public List<CategoryVO> getCategory() {
		return mybatis.selectList("CategoryDAO.getCategory");
	}
	
	@Override
	public List<CategoryVO> getDCategory() {
		return mybatis.selectList("CategoryDAO.getDCategory");
	}

	@Override
	public void addPCate(CategoryVO vo) {
		mybatis.insert("CategoryDAO.addPCate",vo);
	}

	@Override
	public CategoryVO getDInfo(CategoryVO vo) {
		
		return mybatis.selectOne("CategoryDAO.getDInfo",vo);
	}

	@Override
	public void dAddCate(CategoryVO vo) {
		mybatis.insert("CategoryDAO.dAddCate",vo);
		
	}
	
	@Override
	public void dpModifyCate(CategoryVO vo) {
		mybatis.update("CategoryDAO.dModifyCate",vo);
		mybatis.update("CategoryDAO.pModifyCate",vo);
	}

	@Override
	public void dDeleteCate(CategoryVO vo) {
		mybatis.delete("CategoryDAO.dDeleteCate",vo);
		
	}

	@Override
	public List<CategoryVO> checkChild(CategoryVO vo) {
		
		return mybatis.selectList("CategoryDAO.checkChild",vo);
	}

	@Override
	public void pDeleteCate(CategoryVO vo) {
		mybatis.delete("CategoryDAO.pDeleteCate",vo);
		
	}

	@Override
	public AdminVO login(AdminVO vo) {
		return mybatis.selectOne("ChartsDAO.login",vo);
	}
}
