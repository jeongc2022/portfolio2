package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dto.MemberVO;

public class join_Action_Form implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url="member/join.jsp";
	      
	      HttpSession session = request.getSession();
	       MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
	       if(mvo!=null) {
	          url = "shop.do?command=login_form";}
	       
	      request.getRequestDispatcher(url).forward(request, response);

	}

}
