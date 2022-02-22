package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.CartDao;

public class Cart_Delete_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url = "ezen.do?command=cartlist_form";
	      String[] cseqArr = request.getParameterValues("cseq");
	      System.out.println(cseqArr);
	      CartDao cdao = CartDao.getInstance();

	      for(String cseq : cseqArr) cdao.deleteCart(cseq);
	      
	      response.sendRedirect(url);

	}

}
