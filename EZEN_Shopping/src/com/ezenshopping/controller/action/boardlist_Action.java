package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.ezenboarddao;
import com.ezenshopping.dto.ezenboarddto;
import com.ezenshopping.dto.pagingdto;

public class boardlist_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url="board/boardlist.jsp";
		int page = 1;
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		pagingdto paging = new pagingdto();
		paging.setPage(page);
		ArrayList<ezenboarddto> list = new ArrayList<ezenboarddto>();
		ezenboarddao bdao = ezenboarddao.getInstance();
		int count = bdao.getAllCount();
		paging.setTotalCount(count);
		list = bdao.getboardlist(paging);
		request.setAttribute("paging", paging);
		request.setAttribute("blist", list);
		request.getRequestDispatcher(url).forward(request,response);
	}

}
