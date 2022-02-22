package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.MemberDao;

public class deletemember_form_Action implements Action {

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String url = "mypage/delete_pwd_check.jsp";
      
      request.getRequestDispatcher(url).forward(request, response);

   }

}