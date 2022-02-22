package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.ezenshopping.dao.productdao;
import com.ezenshopping.dto.productdto;


public class excel implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		productdao pdao = productdao.getInstance();
		ArrayList<productdto> list = new ArrayList<productdto>();
		list = pdao.getAllProductlistexcel();
		request.setAttribute("plist", list);
		System.out.println(list.get(0).getPname());
		request.getRequestDispatcher("admin/adminexcel.jsp").forward(request, response);
	}

}
