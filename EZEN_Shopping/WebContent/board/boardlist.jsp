<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ include file="../header.jsp"%>
	<div id="qnabn">
    <div id="" class="qnabn">
        <img src="./images/qna1.PNG">
        <div class="qnabntitle">
            <strong style="font-size: 15px;">CUSTOMER CENTER</strong>
            <br><br><strong style="font-size: 30px;">1555-3333</strong>
            <br><span style="font-size: 13px;"><strong>평일</strong>오전 10:00 ~ 오후 06:00</span>
            <br><span style="font-size: 13px;"><strong>점심</strong>오후 01:00 ~ 오후 02:00</span>
            <br><span style="font-size: 13px;"><strong>휴무</strong>토 / 일 / 공휴일은 휴무</span>
        </div>
    </div>
    <div id="" class="qnabn">
        <img src="./images/qna2.PNG">
            <div class="qnabntitle">
            <strong style="font-size: 15px;">MEMBERSHIP GUIDE</strong>
            <br><span style="font-size: 13px; background: black; color: white; padding: 2px;">CROWN</span>
            <span style="font-size: 13px; background: black; color: white; padding: 2px;">STAR</span>
            <span style="font-size: 13px; background: black; color: white; padding: 2px;">GOLD</span>
            <span style="font-size: 13px; background: black; color: white; padding: 2px;">SILVER</span>
            <br><br><span style="font-size: 13px; background: black; color: white; padding: 2px;">BRONZE</span>
            <span style="font-size: 13px; background: black; color: white; padding: 2px;">ORDINARY</span>
            <br><br>
            <span style="font-size: 12px;">5만원이상 구매시 무료배송
멤버쉽 최대 10% 즉시할인</span>
        </div> 
    </div>
    <div id="" class="qnabn">
        <img src="./images/qna3.PNG">
           <div class="qnabntitle">
            <strong style="font-size: 15px;">자주하는 질문</strong>
            <br><br><span style="font-size: 12px;">FAQ를 참고하신 후 문의를 주시면
보다 빠른 답변을 찾으실 수 있습니다.</span>
        </div>
    </div>
    
</div>
<div style="width: 800px;  margin: 0 auto; margin-top:50px;">
    <span style="font-size: 13px; margin-top:">★ 배송관련 안내사항을 알려드립니다.★
※ 상품은 주문확인 이 후 일반상품은 평일기준 2~5일, 제작/수입상품은 평일 기준 10~15일정도 입고기간이 소요되며, 순차적 발송이 이루어지고 있습니다.
상품입고 전 변동사항(지연/품절)이 있으면 별도 연락을 드리고 있습니다. 매일 오후 7시에 주문접수가 마감되며,
그 이후 주문건은 다음날로 넘어갑니다. 그외 궁금하신점이 있으시다면 배송문의 게시판이나 고객센터(☎1555-3333)로 연락주세요</span>
</div>
<div id="qnaboard">
    <div id="qnaboardheader">
        <span id="header1">번호</span>
        <span id="header2">제목</span>
        <span id="header3">작성자</span>
        <span id="header4">작성일</span>
        <span id="header5">조회</span>
    </div>
    <c:forEach items="${blist }" var="list">
    <div id="qnaboardcontent">
       <span style="margin-left: 40px; line-height: 40px; font-size: 13px;">${list.bnum }</span>
       <span style="margin-left: 40px; line-height: 40px; font-size: 13px;"><a href="ezen.do?command=viewboard&bnum=${list.bnum}&result=1">${list.btitle }</a></span>
       <div style="float: right">
       <strong style="line-height: 40px; font-size: 13px;margin-right: 19px;">${list.name }</strong>
       <span style="line-height: 40px; font-size: 13px; color: silver;margin-right: 22px;">${list.bdate }</span>
       <span style="line-height: 40px; font-size: 13px; color: silver;margin-right: 25px;">${list.bhit }</span>
       </div> 
    </div>
   </c:forEach> 
     <div id="writebtn" style="width: 1200px; height: 60px; background: rgb(248,248,248); position: relative;">
        <div id="qnabtn" style="width: 80px; height: 33px; background: #003399; float: right; margin-top: 13px; margin-right: 30px; text-align: center; line-height: 33px; color: white;cursor: pointer;" onclick="location.href='ezen.do?command=writeboardform'">글쓰기</div>
    </div>
</div>
<jsp:include page="/paging/paging.jsp">
		<jsp:param value="${paging.page }" name="page"/>
		<jsp:param value="${paging.beginPage }" name="beginPage"/>
		<jsp:param value="${paging.endPage }" name="endPage"/>
		<jsp:param value="${paging.prev }" name="prev"/>
		<jsp:param value="${paging.next }" name="next"/>
</jsp:include>   
	<%@ include file="../footer.jsp"%>