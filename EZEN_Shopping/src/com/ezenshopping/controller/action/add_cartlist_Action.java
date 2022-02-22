package com.ezenshopping.controller.action;

import java.io.IOException;

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

public class add_cartlist_Action implements Action {

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

         int prodetailpseq = Integer.parseInt(request.getParameter("pseq")); // 상품디테일의 pseq
         cdto.setEmail(mvo.getEmail());
         int prodetailqty = Integer.parseInt(request.getParameter("qty"));  // 상품디테일의 qty
         
         int cartpseq = wdao.selectcartlist(mvo.getEmail());    // 카트리스트의 pseq
         int wishpseq = wdao.selectwishlist(prodetailpseq);  // 위시리스트의 pseq
         int selectproductqty = wdao.selectproductqty(cartpseq);  // 상품리스트의  qty(총재고)
         int clistqty = wdao.selectclistqty(prodetailpseq); // 카트리스트의 qty
         
         
         
         if(prodetailpseq == cartpseq) {
            int allcount = prodetailqty + clistqty;   // 디테일에서 선택한 개수 + 카트리스트에 있는 개수
            if(selectproductqty >= allcount) {
               cdto.setQty(allcount);
               wdao.updatecartlist(allcount, prodetailpseq);
               wdao.deletewishlist2(prodetailpseq);
            }else if (selectproductqty < allcount) {
               url = "ezen.do?command=no_qty";
            }
            
         }else {
            cdto.setPseq(prodetailpseq);
            cdto.setQty(prodetailqty);
            cdao.insertcartdata(cdto);
         }
         
      } else {
         url = "member/loginform.jsp";
      }


      response.sendRedirect(url);

   }

}