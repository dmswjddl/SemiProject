package com.javaclass.controller.admin;
 
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.domain.admin.CategoryVO;
import com.javaclass.domain.admin.ProductVO;
import com.javaclass.service.admin.ProductService;
 
@RequestMapping("admin")
@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	// 상품등록
	@RequestMapping("/insertProduct.do")
	public void insertProduct( ProductVO vo) {
		productService.insertProduct(vo);
	}
 
	// 상품관리 목록보기 
	@RequestMapping("/manageProduct.do")
	public void getProductList(String searchCon, String searchKey, Model m) {
		HashMap map = new HashMap();
		map.put("searchCon", searchCon);
		map.put("searchKey", searchKey);
		
		List<ProductVO> list = productService.getProductList(map);
		for(ProductVO vo : list) {
			System.out.print(vo.getpCount() + " // ");
		}
		m.addAttribute("productList",list);
		
	}
	
	// 회원관리 목록보기
	@RequestMapping("/memberPage.do")
	public void getMemberList(String searchCondition, String searchKeyword, Model m) {
		HashMap map = new HashMap();
		map.put("searchCondition", searchCondition);
		map.put("searchKeyword", searchKeyword);
		
		List<ProductVO> list = productService.getMemberList(map);
		
		m.addAttribute("memberList",list);
		
	}
	

	@RequestMapping("/saveProduct.do")
	public String saveProduct(ProductVO vo) {
		productService.insertProduct(vo);
		
		return "redirect:manageProduct.do";
	}
	
	//상품수정 
	@RequestMapping("/updateProduct.do")
	public String updateProduct(ProductVO vo) {
		productService.updateProduct(vo);
		
		return "redirect:manageProduct.do";
				
	}
	
	//삭제
	@RequestMapping("/deleteProduct.do")
	public String deleteProduct(ProductVO vo) { 
		productService.deleteProduct(vo);
		return "redirect:manageProduct.do";
	}
	
	
	//상품상세보기
	@RequestMapping("/detailProductView.do")
	public void detailProductView(ProductVO vo, Model m) {
		
		m.addAttribute("product",productService.detailProductView(vo));
		
		m.addAttribute("cateList", productService.getCategoryList(vo));
		
		m.addAttribute("dcateList", productService.getDcategoryList(vo));
		
	}

	@RequestMapping("/addProduct.do")
	public void addProduct(ProductVO vo, Model m) {
		m.addAttribute("cateList",productService.getCategoryList(vo));
}
	
	//카테고리 AJAX 
	@RequestMapping("changeCategory.do")
	@ResponseBody
	public List<CategoryVO> changeCategory(CategoryVO vo) {
		
		return productService.changeCategory(vo);
		
	}
	
}