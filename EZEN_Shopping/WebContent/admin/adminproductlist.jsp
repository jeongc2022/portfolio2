<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsubmenu.jsp" />

<style type="text/css">
.productlist_body {
   position: relative;
   width: 1100px;
   margin: 0 auto;
   text-align: center;
}

table {
   width: 900px;
   border-collapse: collapse;
   text-align: center;
   margin-top: 10px;
   margin-bottom: 20px;
   border: 1px solid #e8e8e8;
}

.product_list_table {
   font-family: monospace, serif;
   text-align: center;
   margin-top: 20px;
}

tr, th, td {
   border-bottom: 1px solid #e8e8e8;
   font-size: 13px;
}

td {
   text-align: left;
   border: 1px solid #f3f3f3;
}

th {
   background-color: #e8e8e8;
   margin-right: 10px;
   font-size: 13px;
}

tr, th {
   height: 20px;
}

a {
   text-decoration: none;
   color: black;
}

a:hover {
   border-bottom: 1px solid navy;
}

#product_list_head {
   text-align: left;
}

.product_list_table td {
   text-align: center;
}
</style>
<div class="productlist_body">
   <article style="margin-left:120px;">
        <img src="images/cart.PNG" style="position: relative; float:left; margin-right:10px; margin-top:10px;">
      <h2 style="text-align: left; font-style: monospace; text-decoration:underline dashed;">Product
         List</h2>
      <form name="frmm" method="post" >
         <select style="position: relative; left:-160px;" id="bigselect">
           <option>대분류</option>
           <option value=1>전자제품</option>
           <option value=2>가전제품</option>
           <option value=3>주방용품</option>
           <option value=4>침구류</option>  
         </select>
          <select style="position: relative; left:-160px;" id="sselect">
           <option class="op">중분류</option>  
         </select>
           <input type="text" name="key" placeholder="&nbsp;&nbsp;상품검색" value="${key}"
            style="float: center; width: 500px; height: 35px; border-top-left-radius: 15px; border-top-right-radius: 15px;
             border-bottom-right-radius: 15px; border-bottom-left-radius: 15px;  
             background-color: #e8e8e8; opacity: 0.9; border: none; margin-left:-150px; margin-top:4px;" id="key">
            
         <input type="button" name="search" onclick="go_search_product()"
            style="position: relative; collapse; width: 40px; height: 40px; 
            background: url(images/admin_se.png) no-repeat; border: none; cursor: pointer; float: right; 
            right: 210px; top: 10px;">


         <img src="images/admin_allview.png"
            style="position: relative; float: left; width: 20px; height: 20px; top: 8px;">
         <input type="button" name="btn_total" value="전체보기"
            onclick="go_total_product()"
            style="float: left; background-color: white; border: none; text-align: left; font-weight: bold; margin-top: 10px; font-size: 15px;"> <div style="width: 50px; height: 30px; background: green; position: relative; top:-30px; left: 800px; line-height: 30px; cursor: pointer;" onclick="excelgo()">엑셀</div>
           
         <input type="hidden" name="all_view" value="y"> <br>
         <div style="width: 80px; height: 30px; background: silver; line-height: 30px; color:whilte;" ><a href="ezen.do?command=admin_addproduct_form">등록</a></div>
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
                  <td><a href="ezen.do?command=productdetail&pseq=${productdto.pseq}">${productdto.pname}</a></td>
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
<jsp:include page="/paging/adminproductlistpaging.jsp">
		<jsp:param value="${paging.page }" name="page"/>
		<jsp:param value="${paging.beginPage }" name="beginPage"/>
		<jsp:param value="${paging.endPage }" name="endPage"/>
		<jsp:param value="${paging.prev }" name="prev"/>
		<jsp:param value="${paging.next }" name="next"/>
</jsp:include>   
      </form>
   </article>
</div>
<jsp:include page="adminfooter.jsp" />