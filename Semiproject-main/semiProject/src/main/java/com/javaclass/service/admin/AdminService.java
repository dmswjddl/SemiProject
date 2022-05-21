package com.javaclass.service.admin;

import java.util.List;

import com.javaclass.domain.admin.AdminVO;
import com.javaclass.domain.admin.CategoryVO;
import com.javaclass.domain.admin.ChartsVO;

public interface AdminService {

	List<ChartsVO> pieCharts();
	List<ChartsVO> barCharts();
	List<ChartsVO> graphCharts();
	List<ChartsVO> graphDayCharts(ChartsVO vo);
	
	List<CategoryVO> getDCategory();
	List<CategoryVO> getCategory();
	void addPCate(CategoryVO vo);
	CategoryVO getDInfo(CategoryVO vo);
	void dAddCate(CategoryVO vo);
	void dpModifyCate(CategoryVO vo);
	void dDeleteCate(CategoryVO vo);
	List<CategoryVO> checkChild(CategoryVO vo);
	void pDeleteCate(CategoryVO vo);
	AdminVO login(AdminVO vo);
}
