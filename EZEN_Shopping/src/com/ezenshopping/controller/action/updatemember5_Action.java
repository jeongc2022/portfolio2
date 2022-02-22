package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.MemberDao;
import com.ezenshopping.dto.MemberVO;

public class updatemember5_Action implements Action{

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String url = "ezen.do?command=mypage";
      MemberVO mvo = new MemberVO();
      mvo.setName(request.getParameter("name"));
      mvo.setBirth(request.getParameter("birth"));
      mvo.setGender(request.getParameter("gender"));
      mvo.setPhone(request.getParameter("phone"));
      mvo.setDoroaddress(request.getParameter("doroaddress"));
      mvo.setAddress(request.getParameter("address"));
      mvo.setPostnum(request.getParameter("postnum"));
      mvo.setPrefershop(request.getParameter("prefershop"));
      mvo.setEmail(request.getParameter("email"));
      mvo.setPwd(request.getParameter("pwd"));
      
      
      
      MemberDao mdao = MemberDao.getInstance();
      mdao.updatemember5(mvo);
      
      HttpSession session = request.getSession();
      session.setAttribute("loginUser", mvo);
         
      
      request.getRequestDispatcher(url).forward(request, response);
      
   }

}