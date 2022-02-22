package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.MemberDao;
import com.ezenshopping.dto.MemberVO;

public class login_Action implements Action {

	   @Override
	   public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	      int result=0;
	      String url="ezen.do?command=index";
	      String email=request.getParameter("email");
	       String pwd=request.getParameter("pwd");
	       MemberDao mdao = MemberDao.getInstance();
	       MemberVO mdto  = mdao.getuser(email);
	       if(mdto.getEmail()!=null) {
	          if(mdto.getPwd().equals(pwd)) {
	             HttpSession se = request.getSession();
	             se.setAttribute("loginUser", mdto);
	          }else {
	             result=1;
	             url="ezen.do?command=login_form";
	          }
	       }else {
	          result=2;
	          url="ezen.do?command=login_form";
	       }
	      request.setAttribute("result", result);
	       request.getRequestDispatcher(url).forward(request, response);
	   }

	}
