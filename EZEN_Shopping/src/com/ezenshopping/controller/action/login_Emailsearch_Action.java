package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.MemberDao;
import com.ezenshopping.dto.MemberVO;

public class login_Emailsearch_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		 String url="member/emailsearch_form.jsp";
	       String phone=request.getParameter("phone");                  
	         if(phone!=null){
	            MemberDao mdao = MemberDao.getInstance();
	            MemberVO mvo = new MemberVO();
	            mvo = mdao.getMemberByphone(phone); 
	            if(mvo!=null) { 
	                  request.setAttribute("findUser", mvo);
	            }
	         }
	         RequestDispatcher dispatcher =request.getRequestDispatcher(url);
	         dispatcher.forward(request, response);
	      }

	   }