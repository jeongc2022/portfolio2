package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class logout_Action implements Action{

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String url="main.jsp";
      
      HttpSession session = request.getSession();
      session.invalidate();
      
      request.getRequestDispatcher(url).forward(request, response);
      
   }

}