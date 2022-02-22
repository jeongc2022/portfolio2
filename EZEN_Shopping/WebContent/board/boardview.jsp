<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ include file="../header.jsp"%>
	<div id="viewwrap">
   <h1>고객문의</h1>
    <div id="viewtitle">
        <span style="color: blue; margin-left: 30px;">[${bdto.prefershop }]</span><span style="">${bdto.btitle }</span>
    </div>
    <div id="viewip" style="line-height: 60px;">
        <span style="color: silver; position: relative; left:30px;">${bdto.name }</span>
        <div style="float: right; margin-right: 20px;">
            <img src="./images/hit.PNG" style="position: relative; top:6px; right: 5px;"><span style="color: silver;">${bdto.bhit }</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <img src="./images/date.PNG" style="position: relative; top:9px; right: 5px;"><span style="color: silver;">${bdto.bdate }</span>
        </div>
    </div>
    <div id="viewcontent">
     <br><br>
      &nbsp;&nbsp;&nbsp;&nbsp;<span>${bdto.bcontent }</span>
    </div>
    <c:if test="${loginUser.email==bdto.bemail ||admin.email!=null}">
     <div id="viewbtn" style="width: 50%; margin: 0 auto; text-align: center; margin-bottom: 50px;">
        <div style="float: left; width:100px; height: 30px; background: green; margin-left: 150px; color:white; line-height: 30px; cursor: pointer;" onclick="location.href='ezen.do?command=boardupdate&bnum=${bdto.bnum}'">수정</div>
        <div style="width:100px; height: 30px; float: left; background: gray; margin-left: 100px; color:white; line-height: 30px; cursor: pointer;" onclick="deleteboard(${bdto.bnum})">삭제</div>
    </div>
    </c:if>
    <div id="viewrp">
        &nbsp;&nbsp;&nbsp;&nbsp;<span>댓글</span> <span style="color: green;">${replycount}</span>
    </div>
    <c:forEach items="${replylist}" var="list">
	    <div id="rrpp">
	        <br>
	         &nbsp;&nbsp;&nbsp;&nbsp;<span style="font-weight: bold;">${list.name }</span>&nbsp;&nbsp;<span style="color: silver;">${list.rdate }</span><br>
	         &nbsp;&nbsp;&nbsp;&nbsp;<span style="font-size: 13px;">${list.rcontent}</span><c:if test="${loginUser.email==list.email || admin.email!=null}"><span style="position: relative; left:900px; cursor: pointer;"><img src="./images/rpupdate.PNG" style="width: 20px;"></span>
	         <span style="position: relative; left:920px; cursor: pointer;"><img src="./images/rpdelete.PNG" style="width: 20px;"></span></c:if>
	    </div>
    </c:forEach>
    <br><br>
    <div id="writerpwrap">
        <div id="writerp">
           <textarea rows="6" cols="50" maxlength="200" style="resize: none; border-style: none;" id="rcontent"></textarea>
        </div>
        <div style="position: absolute; width: 180px; bottom: 10px;; right: 10px;">
            <span style="font-weight: bold; font-size: 20px;">(<span id="keyup">0</span>/200)</span>
            <div style="width: 70px; height: 33px; float: right; background: #8C8C8C; text-align: center; line-height: 33px; color: white;cursor: pointer;" onclick="reply_go(${bdto.bnum},'${loginUser.email}');">등록</div>
        </div>
    </div>
</div>    
	<%@ include file="../footer.jsp"%>