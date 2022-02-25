package com.ezen.spboard.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ezen.spboard.dto.SpMember;
import com.ezen.spboard.service.member.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService ms;
	
	@RequestMapping(value="/member_edit", method=RequestMethod.POST)
	public String mem_edit(Model model, HttpServletRequest request) {
		SpMember sm = new SpMember();
		sm.setId(request.getParameter("id"));
		sm.setPw(request.getParameter("pw"));
		sm.setName(request.getParameter("name"));
		sm.setPhone1(request.getParameter("phone1"));
		sm.setPhone2(request.getParameter("phone2"));
		sm.setPhone3(request.getParameter("phone3"));
		sm.setEmail(request.getParameter("email"));
		
		ms.memberModify(sm);
		SpMember svo = ms.memberSearch(sm.getId());
		HttpSession session = request.getSession();
		session.setAttribute("loginUser", svo);
		
		return "redirect:/main";
	}
	
	
	
	@RequestMapping("/member_edit_form")
	public String mem_edit_form(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if( session.getAttribute("loginUser") == null) return "loginform";
		return "member_edit_form";
	}
	
	
	@RequestMapping(value="/member_join", method=RequestMethod.POST)
	public String mem_join(Model model, HttpServletRequest request) {
		
		SpMember sm = new SpMember();
		sm.setId(request.getParameter("id"));
		sm.setPw(request.getParameter("pw"));
		sm.setName(request.getParameter("name"));
		sm.setPhone1(request.getParameter("phone1"));
		sm.setPhone2(request.getParameter("phone2"));
		sm.setPhone3(request.getParameter("phone3"));
		sm.setEmail(request.getParameter("email"));
		
		ms.memberRegister(sm);
		
		return "loginform";
	}
	
	
	
	@RequestMapping("/idcheck")
	public String idcheck(Model model, HttpServletRequest request) {
		String id = request.getParameter("id");
		int result = ms.confirmID(id);
		model.addAttribute("result", result);
		model.addAttribute("id", id);
		return "idcheck";
	}
	
	
	
	@RequestMapping("/member_join_form")
	public String join_form(Model model, HttpServletRequest request) {
		return "member_join_form";
	}	
	
	
	@RequestMapping("/logout")
	public String mem_logout(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();
		//return "loginform";
		return "redirect:/";
	}
	
	
	@RequestMapping(value="/login", method = RequestMethod.POST)
	public String login(Model model, HttpServletRequest request) {
		String url = "loginform";
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		SpMember sdto = ms.memberSearch(id);
		if(sdto != null) {
			//System.out.print(pw+" " + sdto.getPw());
			if( sdto.getPw().equals(pw) ) {
				HttpSession session = request.getSession();
				session.setAttribute("loginUser", sdto);
				url = "redirect:/main";  // main.jsp 가 아니라 RequestMapping("/main") 으로 이동
			}else 
				model.addAttribute("message", "비밀번호를 확인하세요");
		}else 
			model.addAttribute("message", "id를 확인하세요");
		return url;
	}
	
	
	@RequestMapping("/")
	public String index(Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		if( session.getAttribute("loginUser") == null)	
			return "loginform";
		else 
			return "main";
	}
}
