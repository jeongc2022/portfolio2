package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.MemberDao;

public class reset_Pass_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		 String url = "member/loginform.jsp";
         String phone = request.getParameter("phone");
         String pwd = request.getParameter("pwd");
         
         MemberDao mdao = MemberDao.getInstance();
         int result = mdao.resetPassword(pwd, phone);
         
         System.out.println("action:"+result);
         
         if(result!=0) {
        	 request.setAttribute("result", 3);
            
         }else{
        	 url = "member/resetPass.jsp";
             request.setAttribute("message", "비밀번호가 수정되지 않았습니다");
         }
         RequestDispatcher dispatcher =request.getRequestDispatcher(url);
         dispatcher.forward(request, response);

	}

}
