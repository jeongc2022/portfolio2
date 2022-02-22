package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.catbotdao;
import com.ezenshopping.dto.usercbotdto;

public class cbot_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url="ezen.do?command=cbot";
		String key = request.getParameter("key");
		int result=0;
		catbotdao cdao = catbotdao.getInstance();
		String answer = cdao.getAnswer(key);
		System.out.println("answer: "+ answer);
		System.out.println("key: "+key);
		if(answer!="") {
			usercbotdto udto = new usercbotdto();
			udto.setAnswer(answer);
			udto.setEmail("test.com");
			udto.setKey(key);
			cdao.setusercbot(udto);
			result=2;
		}else {
			result=1;
		}
		response.sendRedirect(url);
	}

}
