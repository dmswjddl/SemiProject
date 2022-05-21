package com.javaclass.controller.user;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.javaclass.domain.user.QnAVO;
import com.javaclass.service.user.QnAService;

@RequestMapping("user")
@Controller
public class QnAController {

	@Autowired
	private QnAService qnAService;
		
	//qna 상세 조회
	@RequestMapping("/getQnA.do")
	public void getQnA(QnAVO vo, Model m, int qNo) {
		QnAVO result = qnAService.getQnA(vo);
		m.addAttribute("qna",result);
	}
	  
	//qna글 등록  
	  @RequestMapping("/saveQnA.do")
	  public String insertQnA(QnAVO vo) throws IOException{ 
		  qnAService.insertQnA(vo);
		  return "redirect:QnAListPage.do";
	  }
	  
	//qna리스트 + 페이징
	@RequestMapping(value="QnAListPage.do", method=RequestMethod.GET) 
	public void QnAListPage(Model model, Integer num) throws Exception {
		
		//게시물 총 갯수
		int count = qnAService.count();
		System.out.println("총 게시물 수: "+count);
		//한 페이지에 출력할 상품 수
		int postNum = 10;
		
		//하단 페이징 번호출력
		int pageNum = (int)Math.ceil((double)count/postNum);
		
		// 출력할 게시물
		if(num==null) num=1;
		int displayPost = (num - 1) * postNum;
		
		List<QnAVO> list = qnAService.QnAListPage(displayPost, postNum);
		
		
		model.addAttribute("qnAListPage",list);
		model.addAttribute("pageNum", pageNum);
	}

}
