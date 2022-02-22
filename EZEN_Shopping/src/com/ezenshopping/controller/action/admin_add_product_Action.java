package com.ezenshopping.controller.action;

import java.io.IOException;
import java.io.Writer;
import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ezenshopping.dao.productdao;
import com.ezenshopping.dto.productdto;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class admin_add_product_Action implements Action {

   @Override
   public void execute(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
      String imgurl = "";
      HttpSession session = request.getSession();
      ServletContext context = session.getServletContext();
      String uploadFilePath = context.getRealPath("productimages");
      productdto pdto = new productdto();
      String url = "";
      try {
         MultipartRequest multi = new MultipartRequest(request, uploadFilePath, 10 * 1024 * 1024, "UTF-8",
               new DefaultFileRenamePolicy());
         String kind = (String) multi.getParameter("skind");
         pdto.setSellingarea(multi.getParameter("sellingarea"));
         pdto.setColor(multi.getParameter("color"));
         pdto.setPname(multi.getParameter("pname"));
         pdto.setQty(Integer.parseInt(multi.getParameter("qty")));
         pdto.setOriprice(Integer.parseInt(multi.getParameter("oriprice")));
         pdto.setPrice(Integer.parseInt(multi.getParameter("price")));
         pdto.setMargin(Integer.parseInt(multi.getParameter("margin")));
         pdto.setContent(multi.getParameter("content"));
         pdto.setKind(kind);
         url = "ezen.do?command=productlist&kind=" + kind;
         // 저장된 파일의 이름은 Enumeration 을 거쳐 다음과 같이 각각 얻어 낼 수 있습니다.
         Enumeration files = multi.getFileNames();
         // multi.getFileNames(); : 전송되 태그 name 과 실제 파일이름이 지정되어 있는 파일이름객체 리스트
         // 각 요소에 Access 하여 getFilesystemName() 메소드로 실제 파일 이름을 추출합니다
         while (files.hasMoreElements()) { // 파일 요소의 갯수 만큼 반복 실행
            String file = (String) files.nextElement();
            String file_name = multi.getFilesystemName(file);
            // 중복된 파일을 업로드할 경우 파일명에 1, 2, 3 과 같은 술자가 붙어 서로를 구분합니다.
            String ori_file_name = multi.getOriginalFileName(file);
            /*
             * System.out.print("<br> 업로드된 파일명 : " + file_name);
             * System.out.print("<br> 원본 파일명 : " + ori_file_name); System.out.print("<hr>");
             */
         }
         imgurl = multi.getFilesystemName("imgurl1");
      } catch (Exception e) {
         System.out.println("예외 발생 : " + e);
      }
      pdto.setImgurl(imgurl);
      productdao pdao = productdao.getInstance();
      pdao.adminaddproduct(pdto);
      response.sendRedirect(url);

   }
}