package com.javaclass.dao.admin;

import java.util.List;

import com.javaclass.domain.admin.AdminVO;
import com.javaclass.domain.admin.CategoryVO;
import com.javaclass.domain.admin.ChartsVO;

public interface AdminDAO {

	List<ChartsVO> pieCharts();

	List<ChartsVO> barCharts();

	List<ChartsVO> graphCharts();

	List<ChartsVO> graphDayCharts(ChartsVO vo);
	
	List<CategoryVO> getCategory();

	List<CategoryVO> getDCategory();

	void addPCate(CategoryVO vo);

	CategoryVO getDInfo(CategoryVO vo);

	void dAddCate(CategoryVO vo);

	void dpModifyCate(CategoryVO vo);

	void dDeleteCate(CategoryVO vo);

	List<CategoryVO> checkChild(CategoryVO vo);

	void pDeleteCate(CategoryVO vo);

	AdminVO login(AdminVO vo);
}
