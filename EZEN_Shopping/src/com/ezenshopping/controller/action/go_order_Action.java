package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.adminDao;
import com.ezenshopping.dto.MemberVO;

public class go_order_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession se = request.getSession();
		MemberVO mvo= (MemberVO) se.getAttribute("loginUser");
		String email = mvo.getEmail();
		adminDao adao = adminDao.getInstance();
		adao.setorder(email);
		request.getRequestDispatcher("ezen.do?command=index").forward(request,response);

	}

}
