package com.ezen.spboard.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ezen.spboard.dto.Paging;
import com.ezen.spboard.dto.SpBoard;
import com.ezen.spboard.service.board.BoardService;

@Controller
public class BoardController {

	@Autowired
	BoardService bs;
	
	
	@RequestMapping("board_delete")
	public String board_delete(Model model, HttpServletRequest request) {
		String num = request.getParameter("num");
		bs.boardDeleate(num);
		return "redirect:/main";
	}
	
	
	
	@RequestMapping("board_delete_form")
	public String board_delete_form(Model model, HttpServletRequest request) {
		String num = request.getParameter("num");
		model.addAttribute("num", num);
		return "board_check_pass_form";
	}
	
	
	
	@RequestMapping(value="board_update",method = RequestMethod.POST)
	public String board_update(Model model, HttpServletRequest request) {
		SpBoard sb = new SpBoard();
		sb.setNum(Integer.parseInt(request.getParameter("num")));
		sb.setPass(request.getParameter("pass"));
		sb.setName(request.getParameter("name"));
		sb.setEmail(request.getParameter("email"));
		sb.setTitle(request.getParameter("title"));
		sb.setContent(request.getParameter("content"));
		bs.boardUpdate(sb);
		return "redirect:/main";
	}
	
	
	@RequestMapping("board_update_form")
	public String board_update_form(Model model, HttpServletRequest request) {
		String num = request.getParameter("num");
		SpBoard sb = bs.getBoard_edit(num);
		model.addAttribute("board", sb);
		return "board_update_form";
	}
		
	
	
	@RequestMapping("/board_edit")
	public String board_edit(Model model, HttpServletRequest request) {
		String num = request.getParameter("num");
		String pass = request.getParameter("pass");
		SpBoard sb = bs.getBoard_edit(num);
		model.addAttribute("num", num);
		if(pass.equals(sb.getPass()) ) return "board_check_pass";
		else {
			model.addAttribute("message", "비밀번호가 맞지 않습니다. 확인해주세요");
			return "board_check_pass_form";
		}
	}
	
	
	
	@RequestMapping("/board_edit_form")
	public String board_edit_form(Model model, HttpServletRequest request) {
		String num = request.getParameter("num");
		model.addAttribute("num", num);
		return "board_check_pass_form";
	}
	
	
	
	@RequestMapping("/boardview")
	public String board_view(Model model, HttpServletRequest request) {
		String num = request.getParameter("num");
		SpBoard sb = bs.getBoard(num);
		model.addAttribute("board", sb);
		return "board_view";
	}
	
	
	
	@RequestMapping(value="boardwrite", method = RequestMethod.POST)
	public String board_write(Model model, HttpServletRequest request) {
		String url = "redirect:/main";
		
		SpBoard sb = new SpBoard();
		sb.setPass(request.getParameter("pw"));
		sb.setName(request.getParameter("name"));
		sb.setEmail(request.getParameter("email"));
		sb.setTitle(request.getParameter("title"));
		sb.setContent(request.getParameter("content"));
		
		bs.boardInsert(sb);
		
		return url;
	}
	
	
	@RequestMapping("/boardwrite_form")
	public String write_form(Model model, HttpServletRequest request) {
		String url = "boardwrite_form";
		HttpSession session = request.getSession();
		if( session.getAttribute("loginUser") == null)	url="loginform";		
		return url;
	}
	
	
	@RequestMapping("/main")
	public String main(Model model, HttpServletRequest request) {
		String url = "main";
		HttpSession session = request.getSession();
		if( session.getAttribute("loginUser") == null)	
			return "loginform";
		else {
			int page=1;
			if(request.getParameter("page")!=null)
        		page = Integer.parseInt(request.getParameter("page"));
			
			Paging paging = new Paging();
			paging.setPage(page);
			
			int count = bs.getAllCount();
			paging.setTotalCount(count);
			
			ArrayList<SpBoard> list = bs.selectBoardAll(paging);
			System.out.println(list.size());
			model.addAttribute("boardList", list);
			model.addAttribute("paging", paging);
		}
		return url;
	}
}
