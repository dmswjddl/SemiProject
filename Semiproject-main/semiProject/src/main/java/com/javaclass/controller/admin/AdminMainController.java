package com.javaclass.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.domain.admin.AdminVO;
import com.javaclass.domain.admin.CategoryVO;
import com.javaclass.domain.admin.ChartsVO;
import com.javaclass.domain.user.CustomerVO;
import com.javaclass.service.admin.AdminService;

@RequestMapping("admin")
@Controller
public class AdminMainController {
	
	@RequestMapping("/{admin}.do")														//부른페이지로 돌아가기
	public String viewPage(@PathVariable String admin) {
		return "admin/"+admin;
	} 

	@Autowired
	private AdminService adminService;

	@RequestMapping("chartAdmin.do")										//차트
	public void charts(Model m, ChartsVO vo) {
		m.addAttribute("pie",adminService.pieCharts());
		m.addAttribute("bar",adminService.barCharts());
		m.addAttribute("graph",adminService.graphCharts());
		m.addAttribute("graphDay",adminService.graphDayCharts(vo));
	}

	@RequestMapping("daycharts.do")											//월에 맞는 일자별 매출조회 차트ajax
	@ResponseBody
	public List<ChartsVO> dayCharts(Model m, ChartsVO vo, HttpServletResponse response) {
		List<ChartsVO> list = adminService.graphDayCharts(vo);
		return list;
	}

	@RequestMapping("cateAdmin.do")											//카테고리 정보 불러오기
	public void category(Model m) {
		m.addAttribute("dcategory",adminService.getDCategory());
		m.addAttribute("category",adminService.getCategory());
	}

	@RequestMapping("pCateAdd.do")											//부모카테고리 추가
	@ResponseBody
	public void addPCate(CategoryVO vo) {
		adminService.addPCate(vo);
	}

	@RequestMapping("pDeleteCate.do")										//부모카테고리 삭제
	@ResponseBody
	public void pDeleteCate(CategoryVO vo){
		adminService.pDeleteCate(vo);
	}

	@RequestMapping("dCateInfo.do")											//자식카테고리 정보불러오기
	@ResponseBody
	public CategoryVO dCateInfo(CategoryVO vo) {
		vo = adminService.getDInfo(vo);
		return vo;
	}

	@RequestMapping("dCateAdd.do")											//자식카테고리 추가
	@ResponseBody
	public void dAddCate(CategoryVO vo) {
		adminService.dAddCate(vo);
	}

	@RequestMapping("dpMoidfyCate.do")										//부모,자식카테고리 이름 수정
	@ResponseBody
	public void dpMoidfyCate(CategoryVO vo) {
		adminService.dpModifyCate(vo);
	}

	@RequestMapping("dDeleteCate.do")										//자식카테고리 삭제
	@ResponseBody
	public void dDeleteCate(CategoryVO vo) {
		adminService.dDeleteCate(vo);
	}

	@RequestMapping("checkChild.do")										//자식카테고리 유무 확인
	@ResponseBody
	public List<CategoryVO> checkChild(CategoryVO vo){
		return adminService.checkChild(vo);
	}
	
	@RequestMapping("/adminloginCheck.do")													//관리자 로그인 매핑
	public String loginCheck(HttpSession session, AdminVO vo) throws Exception {
		String returnURL="";
		if(session.getAttribute("adminLogin") != null) {
			session.removeAttribute("adminLogin");
		}
		AdminVO cvo = adminService.login(vo);
		
		if(cvo !=null) {
			session.setAttribute("adminLogin", cvo);
			returnURL = "redirect:chartAdmin.do";
		}else {
			returnURL = "redirect:adminLogin.do";
		}
		return returnURL;
	}
	
	@RequestMapping("adminLogout.do")														//관리자 로그아웃
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:adminLogin.do";
	}
}