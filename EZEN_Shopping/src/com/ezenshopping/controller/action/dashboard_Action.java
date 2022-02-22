package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class dashboard_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		request.getRequestDispatcher("admin/dashboard.jsp").forward(request, response);

	}

}
