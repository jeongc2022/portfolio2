package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.adminDao;

public class delivery_go_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		int key = Integer.parseInt(request.getParameter("key"));
		adminDao adao = adminDao.getInstance();
		adao.deliveryupdate(key);
		request.getRequestDispatcher("admin/admindelivery.jsp").forward(request, response);
		
	}

}
