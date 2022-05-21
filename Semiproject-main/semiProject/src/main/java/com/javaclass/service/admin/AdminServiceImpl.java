package com.javaclass.service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.admin.AdminDAO;
import com.javaclass.domain.admin.AdminVO;
import com.javaclass.domain.admin.CategoryVO;
import com.javaclass.domain.admin.ChartsVO;

@Service("adminService")
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	private AdminDAO adminDAO;

	@Override
	public List<ChartsVO> pieCharts() {
		return adminDAO.pieCharts();
	}

	@Override
	public List<ChartsVO> barCharts() {
		
		return adminDAO.barCharts();
	}

	@Override
	public List<ChartsVO> graphCharts() {
		
		return adminDAO.graphCharts();
	}

	@Override
	public List<ChartsVO> graphDayCharts(ChartsVO vo) {
		
		return adminDAO.graphDayCharts(vo);
	}

	@Override
	public List<CategoryVO> getDCategory() {
		
		return adminDAO.getDCategory();
	}
	
	@Override
	public List<CategoryVO> getCategory() {
		
		return adminDAO.getCategory();
	}

	@Override
	public void addPCate(CategoryVO vo) {
		adminDAO.addPCate(vo);
	}

	@Override
	public CategoryVO getDInfo(CategoryVO vo) {
		
		return adminDAO.getDInfo(vo);
	}

	@Override
	public void dAddCate(CategoryVO vo) {
		adminDAO.dAddCate(vo);
	}
	
	@Override
	public void dpModifyCate(CategoryVO vo) {
		adminDAO.dpModifyCate(vo);
	}

	@Override
	public void dDeleteCate(CategoryVO vo) {
		adminDAO.dDeleteCate(vo);
		
	}

	@Override
	public List<CategoryVO> checkChild(CategoryVO vo) {
		
		return adminDAO.checkChild(vo);
	}

	@Override
	public void pDeleteCate(CategoryVO vo) {
		adminDAO.pDeleteCate(vo);
		
	}

	@Override
	public AdminVO login(AdminVO vo) {
		return adminDAO.login(vo);
	}
}
