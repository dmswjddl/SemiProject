package com.javaclass.controller.admin;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.javaclass.domain.user.BoardVO;
import com.javaclass.service.admin.AdminBoardService;


@RequestMapping("admin")
@Controller
public class AdminBoardController {

	@Autowired
	private AdminBoardService adminBoardService;

	// 글 목록 검색	
	@RequestMapping("/boardList.do")
	public void getBoardList(Model model) {
		model.addAttribute("boardList", adminBoardService.getBoardList());
	}

	// 글 등록
	@RequestMapping(value = "/saveBoard.do")
	public String insertBoard(BoardVO vo) throws IOException {
		adminBoardService.insertBoard(vo);
		return "redirect:boardList.do";
	}
	
	// 글 수정완료시
	@RequestMapping("/updateBoard.do")
	public String updateBoard(BoardVO vo) {
		adminBoardService.updateBoard(vo);
		return "redirect:boardList.do";
	}
	
	//글을 수정하기 위한 boardModifyForm
	@RequestMapping("/boardModifyForm.do")
	public void modifyBoard(BoardVO vo, Model m) {
		m.addAttribute("oneBoard", adminBoardService.selectByPK(vo));
	}
	
	// 글 삭제
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		adminBoardService.deleteBoard(vo);
		return "redirect:boardList.do";
	}

	// 글 상세 조회
	@RequestMapping("/getBoard.do")
	public void getBoard(BoardVO vo, Model m) {
		BoardVO result = adminBoardService.getBoard(vo);
		m.addAttribute("board",result);
	}

}
