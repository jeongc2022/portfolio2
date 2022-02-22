package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dto.MemberVO;

public class writeboardform_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url="board/insertboard.jsp";
		HttpSession se = request.getSession();
		MemberVO mvo=(MemberVO) se.getAttribute("loginUser");
		if(mvo==null) {
			url="ezen.do?command=login_form";
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
