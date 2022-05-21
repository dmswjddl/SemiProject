package com.javaclass.dao.admin;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaclass.domain.admin.CategoryVO;
import com.javaclass.domain.admin.ProductVO;

@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public void insertProduct(ProductVO vo) {
		System.out.println("===>sqlSession insertProduct() 호출");
		sqlSession.insert("ProductDAO.insertProduct", vo);
	}
	
	public List<ProductVO> getProductList(HashMap map) {
		System.out.println("===>sqlSession getProductList() 고고");
		return sqlSession.selectList("ProductDAO.getProductList", map); //(매퍼명, 매퍼안의 id)
	}
	
	public List<ProductVO> getMemberList(HashMap map) {
		System.out.println("===>sqlSession getMemberList() 고고");
		
		return sqlSession.selectList("ProductDAO.getMemberList",map);
		
	}
	
	public void updateProduct(ProductVO vo) {
		System.out.println("====> sqlSession updateProduct()호출");
		sqlSession.update("ProductDAO.updateProduct",vo);
	}
	
	public void deleteProduct(ProductVO vo) {
		System.out.println("====>sqlSession deleteProduct()호출");
		sqlSession.delete("ProductDAO.deleteProduct",vo);
	}
	
	public ProductVO detailProductView(ProductVO vo) {
		System.out.println("====>sqlSession detailProductView()호출");
		return sqlSession.selectOne("ProductDAO.detailProductView", vo);
	}

	public List<CategoryVO> getCategoryList(ProductVO vo){
		System.out.println("===>CATEGORY!!");
		return sqlSession.selectList("ProductDAO.getCategoryList");
	}
	
	public List<CategoryVO> getDcategoryList(ProductVO vo){
		System.out.println("==>D_CATEGORY!!!!");
		return sqlSession.selectList("ProductDAO.getDcategoryList",vo);
	}
	
	public List<CategoryVO> changeCategory(CategoryVO vo){
		System.out.println("==>Chachachange!!!");
		return sqlSession.selectList("ProductDAO.changeCategory", vo);
	}
	
}
