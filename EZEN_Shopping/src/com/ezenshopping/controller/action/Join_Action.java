package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.MemberDao;
import com.ezenshopping.dto.MemberVO;

public class Join_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url = "ezen.do?command=index";
	      MemberVO mvo = new MemberVO();
	      String name= request.getParameter("name");
	      String birth=request.getParameter("birth");
	      System.out.println(name);
	      System.out.println(birth);
	      mvo.setName(request.getParameter("name"));
	      mvo.setBirth(request.getParameter("birth"));
	      System.out.println(mvo.getBirth());
	      mvo.setPhone(request.getParameter("phone"));
	      mvo.setGender(request.getParameter("gender"));
	      mvo.setDoroaddress("가");
	      mvo.setAddress("다");   
	      mvo.setPostnum("나");
	      mvo.setZip_num(1);
	      mvo.setPrefershop(request.getParameter("prefershop"));
	      mvo.setEmail(request.getParameter("email"));
	      mvo.setPwd(request.getParameter("pwd"));
	      
	      MemberDao mdao = MemberDao.getInstance();
	      mdao.insertMember(mvo);

	       
	       
	       RequestDispatcher dispatcher = request.getRequestDispatcher(url);
	       dispatcher.forward(request, response);

	}

}
