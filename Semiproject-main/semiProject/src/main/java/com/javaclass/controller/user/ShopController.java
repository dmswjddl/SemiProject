package com.javaclass.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.javaclass.domain.user.ShopVO;
import com.javaclass.service.user.ShopService;

@RequestMapping("user")
@Controller
public class ShopController {

	@Autowired
	private ShopService shopService;

	// 글 상세 조회
	@RequestMapping("getDetail.do")
	public void getDetail(ShopVO vo, Model m) {
		m.addAttribute("getDetail",shopService.getDetail(vo));
		/* m.addAttribute("rStar",shopService.getDetail(vo)); */
	}

	// 상품 전체 * 페이징 처리
	@RequestMapping(value="productListPage.do", method=RequestMethod.GET)
	public void ProductListPage(Model model, @RequestParam("num") int num) throws Exception{
		System.out.println("컨트롤러 지나갑니다.");

		// 게시물 총 갯수
		int count = shopService.count();

		// 한 페이지에 출력할 상품 수
		int postNum = 20;

		// 하단 페이징 번호출력
		int pageNum = (int)Math.ceil((double)count/postNum);

		// 출력할 게시물
		int displayPost = (num -1) * postNum;

		List<ShopVO> list =  shopService.productListPage(displayPost, postNum);
		if (list.isEmpty()) {
			System.out.println("실패");
		} else {
			System.out.println("성공");
		}
		System.out.println(list.size());
		
		model.addAttribute("productListPage", list);
		model.addAttribute("pageNum", pageNum);
		
		model.addAttribute("category",shopService.category());// 대분류
		
		model.addAttribute("smallCate",shopService.smallCate());			// 소분류
		
	}

}

