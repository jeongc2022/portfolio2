package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dto.MemberVO;

public class mypage_Action_Form implements Action {

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String url="mypage/mypage.jsp";
      
      
      HttpSession session = request.getSession();
      MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
      String name = mvo.getName();
      
      String firstname = name.substring(0,1);
      String lastname = name.substring(1,3);
      System.out.println(firstname);
      System.out.println(lastname);
      session.setAttribute("firstname", firstname);
      session.setAttribute("lastname", lastname);
      
      
      session.setAttribute("loginUser", mvo);
      
      request.getRequestDispatcher(url).forward(request, response);
   }

}