package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.ezenboarddao;
import com.ezenshopping.dto.ezenboarddto;

public class boardupdateok_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String btitle=request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		System.out.println(btitle+" "+bcontent+" "+bnum);
		String url="ezen.do?command=viewboard&bnum="+bnum;
		ezenboarddto bdto = new ezenboarddto();
		bdto.setBtitle(btitle);
		bdto.setBcontent(bcontent);
		bdto.setBnum(bnum);
		ezenboarddao bdao = ezenboarddao.getInstance();
		bdao.updateboard(bdto);
		request.getRequestDispatcher(url).forward(request, response);
	}

}
