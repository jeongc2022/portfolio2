<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsubmenu.jsp" />
<style type="text/css">
.productList_base {
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

.member_list_table {
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

.member_list_table td {
	text-align: center;
}
</style>
<div class="productList_base">
	<article style="margin-left:120px;">
		<img src="images/mypage.PNG" style="position: relative; float:left; margin-right:10px; margin-top:3px;">
      <h2 style="text-align: left; font-style: monospace; text-decoration:underline dashed;">Member
         List</h2>
		<form name="frmm" method="post">
			   <input type="text" name="key" placeholder="&nbsp;회원이름" value="${key}"
            style="float: center; width: 500px; height: 35px; border-top-left-radius: 15px; border-top-right-radius: 15px;
             border-bottom-right-radius: 15px; border-bottom-left-radius: 15px;  
             background-color: #e8e8e8; opacity: 0.9; border: none; margin-left:-150px; margin-top:4px;" id="key">

         <input type="button" name="search" onclick="go_search_member()"
            style="position: relative; collapse; width: 40px; height: 40px; 
            background: url(images/admin_se.png) no-repeat; border: none; cursor: pointer; float: right; 
            right: 290px; top: 8px;" id="search">

			<img src="images/admin_allview.png"
				style="position: relative; float: left; width: 20px; height: 20px; top: 8px;">
			<input type="button" name="btn_total" value="전체보기"
				onclick="go_total_member()"
				style="float: left; background-color: white; border: none; text-align: left; font-weight: bold; margin-top: 10px; font-size: 15px;">
			<br>
			<table class="member_list_table">
				<tr>
					<th>이메일</th>
					<th>이름</th>
					<th>생일</th>
					<th width="100px;">전화번호</th>
					<th>성별</th>
					<th width="100px;">도로명주소</th>
					<th width="100px;">상세주소</th>
					<th>우편번호</th>
					<th>비밀번호</th>
				</tr>
				<c:forEach items="${mlist}" var="list">
					<tr>
						<td>${list.email}</td>
						<td>${list.name}</td>
						<td>${list.birth}</td>
						<td>${list.phone}</td>
						<td>${list.gender}</td>
						<td>${list.doroaddress}</td>
						<td>${list.address}</td>
						<td>${list.postnum}</td>
						<td>${list.pwd}</td>

					</tr>
				</c:forEach>
			</table>
<jsp:include page="/paging/adminmemberlistpaging.jsp">
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