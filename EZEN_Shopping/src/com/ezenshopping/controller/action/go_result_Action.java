package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.adminDao;

public class go_result_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String [] checkd =(String[])request.getParameterValues("checkd");
		int edseq=0;
		adminDao adao = adminDao.getInstance();
		for(int i=0; i<checkd.length; i++) {
			 edseq=Integer.parseInt(checkd[i]); 
			 adao.orderresultupdate(edseq);
			 
		}
		request.getRequestDispatcher("ezen.do?command=admin_order_list").forward(request, response);
 
	}

}
