package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.productdao;
import com.ezenshopping.dto.productdto;

public class search_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String key = request.getParameter("key");
		String url="product/productlist.jsp";
		ArrayList<productdto> list = new ArrayList<productdto>();
		productdao pdao = productdao.getInstance();
		list = pdao.getsearch(key);
		for(int i=0; i<list.size(); i++) {
			System.out.println(list.get(i).getPname());
		}
		request.setAttribute("Plist",list);
		request.getRequestDispatcher(url).forward(request, response);

	}

}
