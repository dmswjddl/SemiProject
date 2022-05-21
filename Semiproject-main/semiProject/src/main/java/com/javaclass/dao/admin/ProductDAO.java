package com.javaclass.dao.admin;

import java.util.HashMap;
import java.util.List;

import com.javaclass.domain.admin.CategoryVO;
import com.javaclass.domain.admin.ProductVO;

public interface ProductDAO {
	public void insertProduct(ProductVO vo);

	public List<ProductVO> getProductList(HashMap map);

	public List<ProductVO> getMemberList(HashMap map); 

	public void updateProduct(ProductVO vo);

	public void deleteProduct(ProductVO vo);

	public ProductVO detailProductView(ProductVO vo);

	public List<CategoryVO> getCategoryList(ProductVO vo);

	public List<CategoryVO> getDcategoryList(ProductVO vo);

	public List<CategoryVO> changeCategory(CategoryVO vo);



}
