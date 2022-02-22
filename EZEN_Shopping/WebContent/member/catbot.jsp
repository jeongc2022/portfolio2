<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/main.css" rel="stylesheet">
<script type="text/javascript" src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
$(function(){
    $("#catbot2").scrollTop($("#catbot2")[0].scrollHeight);
})
function cbotgo(){
	var key = $("#key").val();
	if(key==""){
		alert("질문 내용을 입력해주세요.");
		return;
	}
	location.href="ezen.do?command=cbotaction&key="+key;
}
</script>
</head>
<body>
<div id="catbotwrap" style="width: 100%; text-align: center; position: relative; ">
     <img src="images/catbot.PNG" style="height: 900px;">
     <div id="catbot2" style="background: white; width: 390px; height: 740px; position: absolute; left:750px; top:40px; overflow:scroll;">
        <div style="width: 150px;">
            <img src="images/cbot.PNG" style="width: 40px; height: 40px; float: left; border-radius: 50%;">
            <span style="float: left; line-height: 40px; font-weight: bold;">채팅봇</span>
            <br><div style="width: 170px; background: yellow; margin-top: 20px; text-align: left; padding: 19px; border-radius: 50%;"><span>반갑습니다. EZEN 챗봇입니다. 질문어를 입력해주세요.</span></div>
        </div>
        <div style="width: 100%; height: 20px;"></div>
       
       <c:forEach items="${list }" var="clist">
         <div style="width: 150px;float: right; margin-right: 18px;">
            <div style="width: 50px; background: yellow; margin-top: 20px; text-align: right; float: right; text-align: center; border-radius: 50%; padding: 5px;"><span>${clist.key}</span>
            </div> 
        </div>
        <div style="width: 100%; height: 20px;"></div>
        
        <div style="width: 150px;">
            <img src="images/cbot.PNG" style="width: 40px; height: 40px; float: left; border-radius: 50%;">
            <span style="float: left; line-height: 40px; font-weight: bold;">채팅봇</span>
            <br><div style="width: 170px; background: yellow; margin-top: 20px; text-align: left; padding: 35px; border-radius: 50%;"><span>${clist.answer }</span></div>
        </div>
        <div style="width: 100%; height: 20px;"></div>
      
     </c:forEach>   
     </div>
     <img src="images/catbothome.PNG" style="position: absolute; bottom:59px; left:760px; cursor: pointer" onclick="location.href='ezen.do?command=index'">
     <img src="images/catbotgo.PNG" style="position: absolute; bottom:59px; left:1103px; cursor: pointer" onclick="cbotgo();">
     <input type="text" placeholder="EZEN봇에게 질문해보세요" style="position: absolute; bottom: 65px; right: 830px; width: 260px; height: 35px; border-style: none;" id="key" name="key">
 </div>
 <jsp:include page="../footer.jsp"/>  