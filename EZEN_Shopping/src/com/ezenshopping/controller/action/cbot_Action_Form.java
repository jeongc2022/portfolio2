package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.catbotdao;
import com.ezenshopping.dto.usercbotdto;

public class cbot_Action_Form implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url="member/catbot.jsp";
		String email = "test.com";
		catbotdao cdao = catbotdao.getInstance();
		ArrayList<usercbotdto>list = cdao.getanswer(email);
		request.setAttribute("list", list);
		request.getRequestDispatcher(url).forward(request, response);

	}

}
