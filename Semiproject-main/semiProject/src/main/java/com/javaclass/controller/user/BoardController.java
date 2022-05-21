package com.javaclass.controller.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaclass.domain.user.BoardVO;
import com.javaclass.service.user.BoardService;


@RequestMapping("/user")
@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;

	// 글 상세 조회
	@RequestMapping("/getNotice.do")
	public void getBoard(BoardVO vo, Model m) {
		System.out.println(vo.getBoardNo()+" >1번");
		BoardVO result = boardService.getBoard(vo);
		System.out.println(result.getBoardTitle()+" >2번");
		m.addAttribute("board",result);
	}
	
	//공지사항 리스트 + 페이징
		@RequestMapping(value="noticeListPage.do", method=RequestMethod.GET) 
		public void QnAListPage(Model model, Integer num) throws Exception {
			
			//게시물 총 갯수
			int count = boardService.count();
			System.out.println("총 게시물 수: "+count);
			//한 페이지에 출력할 상품 수
			int postNum = 10;
			
			//하단 페이징 번호출력
			int pageNum = (int)Math.ceil((double)count/postNum);
			
			// 출력할 게시물
			if(num==null) num=1;
			int displayPost = (num - 1) * postNum;
			
			List<BoardVO> list = boardService.noticeListPage(displayPost, postNum);
			
			
			model.addAttribute("noticeListPage",list);
			model.addAttribute("pageNum", pageNum);
		}
		
	
}
