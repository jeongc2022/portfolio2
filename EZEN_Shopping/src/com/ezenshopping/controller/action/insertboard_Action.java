package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.ezenboarddao;
import com.ezenshopping.dto.MemberVO;
import com.ezenshopping.dto.ezenboarddto;

public class insertboard_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		HttpSession se=request.getSession();
		MemberVO mvo = (MemberVO) se.getAttribute("loginUser");
		String btitle=request.getParameter("btitle");
		String bcontent = request.getParameter("bcontent");
		String bemail = mvo.getEmail();
		String name = mvo.getName();
		String prefershop = mvo.getPrefershop();
		ezenboarddto bdto = new ezenboarddto();
		bdto.setBcontent(bcontent);
		bdto.setBemail(bemail);
		bdto.setBtitle(btitle);
		bdto.setName(name);
		bdto.setPrefershop(prefershop);
		ezenboarddao bdao = ezenboarddao.getInstance();
		bdao.insertboard(bdto);
		String url="ezen.do?command=boardlist";
		request.getRequestDispatcher(url).forward(request, response);

	}

}
