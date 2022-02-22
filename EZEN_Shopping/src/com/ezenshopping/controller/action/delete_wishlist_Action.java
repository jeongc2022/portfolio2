package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.Wishdao;

public class delete_wishlist_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url = "ezen.do?command=wishlist_form";

	      String[] wseqArr = request.getParameterValues("wseq");
	      Wishdao wdao = Wishdao.getInstance();
	      
	      for(String wseq : wseqArr) {
	         wdao.deletewishlist(wseq);
	      }


	      response.sendRedirect(url);


	}

}
