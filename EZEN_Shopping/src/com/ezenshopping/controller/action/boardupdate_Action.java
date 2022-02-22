package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.ezenboarddao;
import com.ezenshopping.dto.ezenboarddto;

public class boardupdate_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url="board/boardupdate.jsp";
		int bnum = Integer.parseInt(request.getParameter("bnum")); 
		ezenboarddao bdao = ezenboarddao.getInstance();
		ezenboarddto bdto = bdao.getboardview(bnum);
		request.setAttribute("bdto", bdto);
		request.getRequestDispatcher(url).forward(request, response);
		

	}

}
