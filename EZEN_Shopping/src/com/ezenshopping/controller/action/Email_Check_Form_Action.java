package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.MemberDao;

public class Email_Check_Form_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url = "member/emailcheck.jsp";
		String email = request.getParameter("email");
		
		MemberDao mdao=MemberDao.getInstance();
		int result = mdao.confirmEmail(email);
		
		request.setAttribute("result", result);
		request.setAttribute("email", email);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
	}
	
	

}
