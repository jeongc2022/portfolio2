package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dto.adminuserdto;

public class admin_Form_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url="admin/adminloginform.jsp";
		HttpSession se = request.getSession();
		adminuserdto adto = (adminuserdto) se.getAttribute("admin");
		if(adto!=null) {
			url="ezen.do?command=adminmemberlist";
		}
		request.getRequestDispatcher(url).forward(request, response);

	}

}
