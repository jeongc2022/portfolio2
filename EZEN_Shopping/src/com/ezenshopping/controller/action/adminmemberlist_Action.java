package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.MemberDao;
import com.ezenshopping.dto.MemberVO;
import com.ezenshopping.dto.pagingdto;


public class adminmemberlist_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		MemberDao mdao = MemberDao.getInstance();
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		String key = request.getParameter("search");
		if(key==null) {
			key = "";
		}
		int page = 1;
		if(request.getParameter("page")!=null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		pagingdto paging = new pagingdto();
		paging.setPage(page);
		int count = mdao.getAllCount(key);
		paging.setTotalCount(count);
		list = mdao.getAllMember(paging,key);
		request.setAttribute("paging", paging);
		request.setAttribute("mlist",list);
		request.setAttribute("key",key);
		request.getRequestDispatcher("admin/adminmemberlist.jsp").forward(request, response);

	}

}
