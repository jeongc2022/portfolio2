package com.ezenshopping.dto;

public class pagingdto {
private int page=1;//현재 페이지(get)
private int totalCount;//row 전체의 수 (get)
private int beginPage;//출력시작
private int endPage;//출력 끝
private int displayRow=20;//한페이지에 몇개의 행을 표시할것인가
private int displayPage = 10;//한페이지에 몇개의 페이지를 표시할것인가
private boolean prev; //prev 버튼이 보일건지 안보일건지
private boolean next;//next 버튼이 보일건지 안보일건지
private int startNum;//표시될 시작 게시물 번호
private int endNum;//표시될 끝 게시물 번호

private void paging() {
	endPage = ((int)Math.ceil(page/(double)displayPage))*displayPage;
	//현재 페이지(page):1	displayPage : 10 -> 1/10의 결과는 0.1 Math.ceil에 의해 1로 계산
	//다시 * displayPage 연산을 마치면 최종값 10이됨
	//이는 현재 표시할 페이지(page)가 2여도 결과는 10이되며 3~9까지 모두 같은 결과를 연산함
	beginPage = endPage - (displayPage-1);
	//10-(10-1) 결과 1페이지
	System.out.println("beginPage: " + beginPage + ", endPage : " + endPage);
	int totalPage = (int)Math.ceil(totalCount/(double)displayRow);
	//총 게시물 수를 한화면에 표시할 게시물 수로 나눠서 총페이지 갯수를 계산
	
	if(totalPage<endPage) {//총 페이지가 현재 endPage 보다 작다면
		endPage = totalPage;//endPage 를 총페이지수로 대체하고
		next = false;//다음 버턴은 표시하지 않는것으로 설정
	}else {
		next = true;
	}
	prev = (beginPage ==1)? false:true;//시작 페이지가 1인경우만 표시 안함
	System.out.println("totalPage : " + totalPage);
	startNum = (page-1)*displayRow+1;//현재 화면의 시작 게시물 번호 1,11,21,31
	endNum = page*displayRow;//현재 화면의 끝 게시물 번호 10,20,30,40
	System.out.println("startNum : " + startNum+", endNum : "+ endNum);
}

public int getPage() {
	return page;
}
public void setPage(int page) {
	this.page = page;
}
public int getTotalCount() {
	return totalCount;
}
public void setTotalCount(int totalCount) {
	this.totalCount = totalCount;
	paging();
}
public int getBeginPage() {
	return beginPage;
}
public void setBeginPage(int beginPage) {
	this.beginPage = beginPage;
}
public int getEndPage() {
	return endPage;
}
public void setEndPage(int endPage) {
	this.endPage = endPage;
}
public int getDisplayRow() {
	return displayRow;
}
public void setDisplayRow(int displayRow) {
	this.displayRow = displayRow;
}
public int getDisplayPage() {
	return displayPage;
}
public void setDisplayPage(int displayPage) {
	this.displayPage = displayPage;
}
public boolean isPrev() {
	return prev;
}
public void setPrev(boolean prev) {
	this.prev = prev;
}
public boolean isNext() {
	return next;
}
public void setNext(boolean next) {
	this.next = next;
}
public int getStartNum() {
	return startNum;
}
public void setStartNum(int startNum) {
	this.startNum = startNum;
}
public int getEndNum() {
	return endNum;
}
public void setEndNum(int endNum) {
	this.endNum = endNum;
}
	
	
}
