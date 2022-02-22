<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ include file="../header.jsp"%>
<%int num=0; %>
<div class="plist_main">
<c:if test="${admin.email!=null }">
<div class="add_product_btnbox">
         <a href="ezen.do?command=admin_addproduct_form"><button class="add_product_btn">상품 등록</button></a>
      </div>
</c:if>      
        <div class="plist_rowbox">
        <c:forEach items="${Plist}" var="list">
           <%num+=1; %>
           <a href="ezen.do?command=productdetail&pseq=${list.pseq}">
            <div class="plist_pro">
                <div class="plist_zzimbox">
                    <div class="plist_zzim"><img src="images/zzim.PNG" class="zzim_img" id="zzim_img1"></div>
                </div>
                <div class="plist_imgbox">
                    <img src="productimages/${list.imgurl}" class="plist_img">
                </div>
                <div class="plist_title">
                    <span class="plist_title_font">${list.pname }</span><br><span class="plist_kind">${list.color }</span><c:if test="${list.qty==0}"><span style="float: right; color: red" class="listqty">매진</span></c:if><c:if test="${list.qty==1}"><span style="float: right; color: red" class="listqty">매진임박!</span></c:if>
                </div>
                <div class="plist_price">&#8361;<fmt:formatNumber value="${list.price }" pattern="#,###,###"/>원</div>
            </div>
            <%if(num%4==0){%>
                  </div>
                  <div class="plist_rowbox">
            <%}%>
        </c:forEach>
        </div>
    </div>
<%@ include file="../footer.jsp"%>