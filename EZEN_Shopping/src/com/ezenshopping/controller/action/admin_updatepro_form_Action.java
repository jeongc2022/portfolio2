package com.ezenshopping.controller.action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezenshopping.dao.productdao;
import com.ezenshopping.dto.productdto;

public class admin_updatepro_form_Action implements Action{

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String url = "admin/adminupdatepro.jsp";
      
      int pdtopseq = Integer.parseInt(request.getParameter("pseq"));
      
      productdao pdao = productdao.getInstance();
      
      productdto pdto = pdao.updateprolist(pdtopseq);
      
      request.setAttribute("Ulist", pdto);
      
      
      request.getRequestDispatcher(url).forward(request, response);
      
   }

}