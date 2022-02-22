<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<% 
String file_name = "adminproductlist";
String ExcelName = new String(file_name.getBytes(),"UTF-8")+".xls";
response.setContentType("application/vnd.ms-excel");
response.setHeader("Content-Disposition", "attachment; filename="+ExcelName);
response.setHeader("Content-Description", "JSP Generated Data");
response.setHeader("Pragma", "no-cache"); %>
</head>
<body>
<table class="product_list_table">
            <tr>
               <th>상품번호</th>
               <th>상품이름</th>
               <th>원가</th>
               <th>판매가격</th>
               <th>이윤</th>
               <th>수량</th>
               <th>판매장소</th>
               <th>상품컬러</th>
               <th>상품종류</th>
            </tr>
            <c:forEach items="${plist}" var="productdto">
               <tr>
                  <td>${productdto.pseq}</td>
                  <td>${productdto.pname}</td>
                  <td>${productdto.oriprice}</td>
                  <td>${productdto.price}</td>
                  <td>${productdto.margin}</td>
                  <td>${productdto.qty}</td>
                  <td>${productdto.sellingarea}</td>
                  <td>${productdto.color}</td>
                  <td>${productdto.kind}</td>            
               </tr>
            </c:forEach>
         </table>
   <!--       <script type="text/javascript">
         	location.href="ezen.do?command=admin_product_list";
         </script> -->
</body>
</html>