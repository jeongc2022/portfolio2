package com.ezenshopping.controller.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.Wishdao;
import com.ezenshopping.dto.MemberVO;
import com.ezenshopping.dto.Wishdto;

public class add_wishlist_Action implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		      String url = "ezen.do?command=wishlist_form";
		      HttpSession session = request.getSession();
		      MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
		      
		      if(mvo != null) {
		         Wishdto wdto = new Wishdto();
		         wdto.setEmail(mvo.getEmail());
		         wdto.setQty(Integer.parseInt(request.getParameter("qty")));
		         wdto.setPseq(Integer.parseInt(request.getParameter("pseq")));
		         
		         Wishdao wdao = Wishdao.getInstance();
		         wdao.insertwishdata(wdto);
		      }else {
		         url = "member/loginform.jsp";
		      }
		      
		      response.sendRedirect(url);


	}

}
