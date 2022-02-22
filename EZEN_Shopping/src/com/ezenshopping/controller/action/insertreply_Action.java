package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.ezenboarddao;
import com.ezenshopping.dto.MemberVO;
import com.ezenshopping.dto.adminuserdto;
import com.ezenshopping.dto.ezenreplydto;

public class insertreply_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		ezenreplydto rdto = new ezenreplydto();
		HttpSession se = request.getSession();
		MemberVO mvo = (MemberVO) se.getAttribute("loginUser");
		adminuserdto adto = (adminuserdto) se.getAttribute("admin");
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		if(adto!=null) {
			rdto.setBnum(bnum);
			rdto.setEmail(adto.getEmail());
			rdto.setName(adto.getName());
			rdto.setRcontent(request.getParameter("rcontent"));
			ezenboarddao bdao = ezenboarddao.getInstance();
			bdao.insertreply(rdto);
		}else if(mvo!=null) {
			rdto.setBnum(bnum);
			rdto.setEmail(request.getParameter("email"));
			rdto.setName(mvo.getName());
			rdto.setRcontent(request.getParameter("rcontent"));
			ezenboarddao bdao = ezenboarddao.getInstance();
			bdao.insertreply(rdto);
		}
		
		String url="ezen.do?command=viewboard&bnum="+bnum;
		request.getRequestDispatcher(url).forward(request, response);
		

	}

}
