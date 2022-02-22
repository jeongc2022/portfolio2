package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.productdao;
import com.ezenshopping.dto.productdto;

public class productdetail_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	      String url = "product/product_detail.jsp";
	      String pseq = request.getParameter("pseq");
	      
	      productdto pdto = new productdto();
	      productdao pdao = productdao.getInstance();
	      pdto = pdao.getProductdetail(pseq);
	      
	      request.setAttribute("pdto", pdto);
	      
	      request.getRequestDispatcher(url).forward(request, response);


	}

}
