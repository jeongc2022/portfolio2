package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.productdao;
import com.ezenshopping.dto.pagingdto;
import com.ezenshopping.dto.productdto;

public class admin_product_list_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		productdao pdao = productdao.getInstance();
		ArrayList<productdto> list = new ArrayList<productdto>();
		String key = request.getParameter("key");
		String select = request.getParameter("select");
		int page = 1;
		if(key==null) {
			key="";
		}
		if(select==null) {
			select="";
		}
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		pagingdto paging = new pagingdto();
		paging.setPage(page);
		int count = pdao.getAllCount(key,select);
		paging.setTotalCount(count);
		list = pdao.getAllProductlist(paging,key,select);
		request.setAttribute("paging", paging);
		request.setAttribute("plist", list);
		request.getRequestDispatcher("admin/adminproductlist.jsp").forward(request, response);

	}

}
