package com.ezenshopping.controller.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.CartDao;
import com.ezenshopping.dao.Wishdao;
import com.ezenshopping.dto.Cartdto;
import com.ezenshopping.dto.MemberVO;
import com.ezenshopping.dto.Wishdto;
import com.ezenshopping.dto.productdto;

public class add_one_cartlist_Action implements Action {

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String url = "ezen.do?command=cartlist_form";
      HttpSession session = request.getSession();
      MemberVO mvo = (MemberVO) session.getAttribute("loginUser");
      if (mvo != null) {
         CartDao cdao = CartDao.getInstance();
         Cartdto cdto = new Cartdto();
         Wishdao wdao = Wishdao.getInstance();
         Wishdto wdto = new Wishdto();
         productdto pdto = new productdto();

         int wlistpseq = Integer.parseInt(request.getParameter("pseq")); // 위시리스트의 pseq
         cdto.setEmail(mvo.getEmail());

         int wlistqty = Integer.parseInt(request.getParameter("qty")); // 위시리스트의 qty

         int selectpseq = wdao.selectcartlist(mvo.getEmail());
         System.out.println(selectpseq); // 카트리스트의 pseq
         cdto.setPseq(selectpseq);

         int clistqty = wdao.selectclistqty(wlistpseq); // 카트리스트의 qty

         int selectproductqty = wdao.selectproductqty(selectpseq);
         System.out.println(selectproductqty); // productlist의 qty(총재고)

         if (wlistpseq == selectpseq) {
            clistqty = clistqty + wlistqty;
            if (selectproductqty >= clistqty) {
               cdto.setQty(clistqty);
               wdao.updatecartlist(clistqty, selectpseq);
               wdao.deletewishlist2(selectpseq);
            } else if (selectproductqty < clistqty) {
               url = "ezen.do?command=no_qty";
            }
         } else {
            cdto.setPseq(wlistpseq);
            cdto.setQty(wlistqty);
            cdao.insertcartdata(cdto);
         }

      } else {
         url = "member/loginform.jsp";
      }

      response.sendRedirect(url);

   }

}