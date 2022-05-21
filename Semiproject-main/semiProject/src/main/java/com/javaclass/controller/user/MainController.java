package com.javaclass.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.javaclass.domain.user.CustomerVO;
import com.javaclass.service.user.MainService;

@RequestMapping("/user")
@Controller
public class MainController {
	
	@Autowired
	private MainService mainService;
	
	@RequestMapping("/{step}.do")														//부른페이지로 돌아가기
	public String viewPage(@PathVariable String step) {
		return "user/"+step;
	} 
	
	@RequestMapping("/loginCheck.do")													//로그인 매핑
	public String loginCheck(HttpSession session, CustomerVO vo, Model m) throws Exception {
		if(session.getAttribute("login") != null) {
			session.removeAttribute("login");
			session.removeAttribute("cart");
		}
		CustomerVO cvo = mainService.login(vo);
		
		if(cvo !=null) {
			session.setAttribute("login", cvo);
			
			return "redirect:main.do";
		}else {
			m.addAttribute("msg", "아이디 또는 비밀번호가 존재하지않습니다."); 
			m.addAttribute("url", "login.do");
			
		}
		return "user/alert";
	}
	@RequestMapping("/createAccount.do")												//회원가입
	public String createAccount(CustomerVO vo) {
		System.out.println(vo.toString());
		mainService.signUp(vo);
		return "redirect:signUpComplete.do";
	}
	
	@RequestMapping("logout.do")														//로그아웃
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:login.do";
	}
	
	@RequestMapping(value="idcheck.do", produces="apllication/text;charset=utf-8")		//중복체크
	@ResponseBody
	public String idCheck(CustomerVO vo) {
		CustomerVO cvo = mainService.idCheck(vo);
		String result="사용가능한 아이디입니다.";
		if(cvo!=null) result = "중복된 아이디가 있습니다.";
		return result;
	}
}
