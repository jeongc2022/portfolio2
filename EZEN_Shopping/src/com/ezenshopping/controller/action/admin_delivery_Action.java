package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.adminDao;
import com.ezenshopping.dto.orderdto;

public class admin_delivery_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		adminDao adao = adminDao.getInstance();
		ArrayList<orderdto> list = new ArrayList<orderdto>();
		list = adao.getDelivery();
		request.setAttribute("olist", list);
		request.getRequestDispatcher("admin/admindelivery.jsp").forward(request, response);

	}

}
