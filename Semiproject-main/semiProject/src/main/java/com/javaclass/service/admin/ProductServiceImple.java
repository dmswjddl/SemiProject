package com.javaclass.service.admin;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaclass.dao.admin.ProductDAO;
import com.javaclass.domain.admin.CategoryVO;
import com.javaclass.domain.admin.ProductVO;

@Service("productService")
public class ProductServiceImple implements ProductService{
		
		@Autowired
		private ProductDAO productDAO;
		
	
		public void insertProduct(ProductVO vo) {
			
			productDAO.insertProduct(vo);
		}
		
		public List<ProductVO> getProductList(HashMap map){
			return productDAO.getProductList(map);
		}
		
		public List<ProductVO> getMemberList(HashMap map){ 
			return productDAO.getMemberList(map);		
		}
		
		public void updateProduct(ProductVO vo) {
			productDAO.updateProduct(vo);
		}
		
		
		public void deleteProduct(ProductVO vo) {
			productDAO.deleteProduct(vo);
		}
		
		//상품 상세보기 
		public ProductVO detailProductView(ProductVO vo) {
			return productDAO.detailProductView(vo);
		}

		public List<CategoryVO> getCategoryList(ProductVO vo){  
			 return  productDAO.getCategoryList(vo); 
		 }
		
		public List<CategoryVO> getDcategoryList(ProductVO vo){
			return productDAO.getDcategoryList(vo);
		}
		 
		public List<CategoryVO> changeCategory(CategoryVO vo){
			return productDAO.changeCategory(vo);
		}
		 
		 

	

}
