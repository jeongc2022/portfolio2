package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class pwdsearch_form_Actoin implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url="member/pwdsearch_form.jsp";
	      
	       RequestDispatcher dispatcher =request.getRequestDispatcher(url);
	        dispatcher.forward(request, response);

	}

}
