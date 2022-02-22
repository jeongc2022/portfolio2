package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.MemberDao;
import com.ezenshopping.dto.MemberVO;

public class login_pwdsearch_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url="member/resetPass.jsp";
	      String phone=request.getParameter("phone");
	      String email=request.getParameter("email");
	      
	      MemberDao mdao = MemberDao.getInstance();
	      MemberVO mvo = new MemberVO();
	      mvo = mdao.getMemberpwd(phone ,email);
	      System.out.println(mvo.getEmail());
	      if(mvo.getEmail()==null) { 
	         url="member/pwdsearch_form.jsp";
	         System.out.println("요기");
	         request.setAttribute("result", 1);
	      }else {
	         request.setAttribute("findPass", mvo);
	      }
	      
	      RequestDispatcher dispatcher =request.getRequestDispatcher(url);
	      dispatcher.forward(request, response);

	}

}
