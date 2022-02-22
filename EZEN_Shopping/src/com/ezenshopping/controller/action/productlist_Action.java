package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.productdao;
import com.ezenshopping.dto.productdto;

public class productlist_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url="product/productlist.jsp";
		String kind=request.getParameter("kind");
		productdao pdao = productdao.getInstance();
		ArrayList<productdto> list = pdao.getProductlist(kind);
		request.setAttribute("Plist", list);
		request.getRequestDispatcher(url).forward(request, response);

	}

}
