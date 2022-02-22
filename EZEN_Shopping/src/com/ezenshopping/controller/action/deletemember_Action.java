package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.MemberDao;

public class deletemember_Action implements Action{

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String url = "main.jsp";
      String pwd = request.getParameter("pwd");
      
      MemberDao mado = MemberDao.getInstance();
      mado.deletemember(pwd);
      
      HttpSession session = request.getSession();
      session.invalidate();
      
      request.getRequestDispatcher(url).forward(request, response);
      
   }

}