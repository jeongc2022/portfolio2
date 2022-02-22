package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.adminDao;
import com.ezenshopping.dto.adminuserdto;

public class adminloginAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String url = "ezen.do?command=adminmemberlist";
		adminDao adao = adminDao.getInstance();
		adminuserdto adto = new adminuserdto();
		adto = adao.getAdmin(email);
	      if(adto.getEmail()!=null) {
	          if(adto.getPwd().equals(pwd)) {
	             HttpSession se = request.getSession();
	             se.setAttribute("admin", adto);
	            
	          }else {
	             request.setAttribute("msg", "비밀번호가 틀렸습니다.");
	             url="ezen.do?command=admin";
	          }
	       }else {
	          request.setAttribute("msg", "없는 아이디 입니다.");
	          url="ezen.do?command=admin";
	       }
	      	 request.getRequestDispatcher(url).forward(request, response);
	}

}
