package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.Wishdao;
import com.ezenshopping.dto.MemberVO;
import com.ezenshopping.dto.Wishdto;

public class wishlist_form_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
	      String url = "wishlist/wishlist_form.jsp";
	      HttpSession session = request.getSession();
	      MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
	      
	      if (mvo != null) {
	         String email = mvo.getEmail();
	         Wishdao wdao = Wishdao.getInstance();
	         ArrayList<Wishdto> list = wdao.listWish(email);

	         int totalPrice = 0;
	         for (Wishdto wdto : list) {
	            totalPrice += wdto.getPrice() * 1;
	         }
	         
	         request.setAttribute("wishList", list);
	         request.setAttribute("totalPrice", totalPrice);
	         
	      } else {
	         url = "ezen.do?command=login_form";
	      }
	      RequestDispatcher dis = request.getRequestDispatcher(url);
	      dis.forward(request, response);


	}

}
