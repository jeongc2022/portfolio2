package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.ezenboarddao;
import com.ezenshopping.dto.ezenboarddto;
import com.ezenshopping.dto.ezenreplydto;

public class viewboard_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		String result = request.getParameter("result");
		String url = "board/boardview.jsp";
		ezenboarddto bdto = new ezenboarddto();
		ezenboarddao bdao = ezenboarddao.getInstance();
		if(result!=null) {
			bdao.updatehit(bnum);
		}
		ArrayList<ezenreplydto> list = bdao.getreply(bnum);
		int replycount  = list.size();
		bdto=bdao.getboardview(bnum);
		
		request.setAttribute("replylist", list);
		request.setAttribute("replycount", replycount);
		request.setAttribute("bdto", bdto);
		request.getRequestDispatcher(url).forward(request, response);

	}

}
