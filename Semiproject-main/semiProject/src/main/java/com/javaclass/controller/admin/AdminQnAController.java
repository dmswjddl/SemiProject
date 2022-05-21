package com.javaclass.controller.admin;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.user.QnAVO;
import com.javaclass.service.admin.AdminQnAService;

@RequestMapping("admin")
@Controller
public class AdminQnAController {

	@Autowired
	private AdminQnAService adminqnAService;
	
	
	//qna 리스트 출력	
	@RequestMapping("/qnAList.do") 
	public void getQnAList(Model model) {
		model.addAttribute("qnAList", adminqnAService.getQnAList());
	}
	  
	//qna 상세 조회
	@RequestMapping("/getQnA.do")
	public void getQnA(QnAVO vo, Model m, int qNo) {
		QnAVO result = adminqnAService.getQnA(vo);
		m.addAttribute("qna",result);
	}
	  
	//qna글 등록  
	  @RequestMapping("/saveQnA.do") 
	  public String insertQnA(QnAVO vo) throws IOException{ 
		  adminqnAService.insertQnA(vo);
		  return "redirect:qnAList.do";
	  }
	 	
	//qna수정
	  @RequestMapping("/updateQnA.do")
	  public String updateQnA(QnAVO vo) {
		  adminqnAService.updateQnA(vo);
		  return "redirect:qnAList.do";
	  }		

}
