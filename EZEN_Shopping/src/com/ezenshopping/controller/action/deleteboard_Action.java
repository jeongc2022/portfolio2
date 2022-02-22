package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.ezenboarddao;

public class deleteboard_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		String url="ezen.do?command=boardlist";
		ezenboarddao bdao = ezenboarddao.getInstance();
		bdao.deleteboard(bnum);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
