package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.CartDao;
import com.ezenshopping.dto.Cartdto;
import com.ezenshopping.dto.MemberVO;

public class cartlist_form_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String url = "mypage/cartlist_form.jsp";
	      HttpSession session = request.getSession();
	      MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
	      if (mvo!= null) {
	         
	         String email = mvo.getEmail();
	         CartDao cdao = CartDao.getInstance();
	         ArrayList<Cartdto> list = cdao.listCart(email);

	         int totalPrice = 0;
	         for (Cartdto cvo : list)
	            totalPrice += cvo.getPrice() * cvo.getQty();

	         request.setAttribute("cartList", list);
	         request.setAttribute("totalPrice", totalPrice);
	      } else {
	         url = "ezen.do?command=login_form";
	      }
	      RequestDispatcher dis = request.getRequestDispatcher(url);
	      dis.forward(request, response);

	}

}
