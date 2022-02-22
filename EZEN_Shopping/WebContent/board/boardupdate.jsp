<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<form method="get" name="frmm" id="frmm">
<input type="hidden" id="bnum" name="bnum" value="${bdto.bnum }">
     <div id="boardwritewrap">
        <h1>게시글 수정</h1>
         <div id="boardwriterconteiner">
             <div id="boardwritertitle">
                <input type="text" value="${bdto.btitle }" id="btitle" name="btitle"> 
             </div>
             <textarea rows="14" cols="90" id="bcontent" name="bcontent">${bdto.bcontent }</textarea>
         </div>
         <div id="viewbtn1" style="width: 50%; margin: 0 auto; text-align: center; margin-top:30px; margin-left: 300px;">
       	 <div style="float: left; width:100px; height: 30px; background: green; margin-left: 150px; color:white; line-height: 30px; cursor: pointer;" onclick="boardupdate()">수정</div>
        <div style="width:100px; height: 30px; float: left; background: gray; margin-left: 100px; color:white; line-height: 30px; cursor: pointer;">취소</div>
    </div>
     </div>
       
 </form>

<%@ include file="../footer.jsp"%>