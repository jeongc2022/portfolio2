drop table board purge;

create table board(
	num number(5) primary key,
	pass varchar2(30),
	name varchar2(30),
	email varchar2(30),
	title varchar2(50),
	content varchar2(1000),
	readcount number(4) default 0,
	writedate date default sysdate
);

create sequence board_seq start with 1 increment by 1;

Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');


create table spmember(
	id varchar2(15),
	pw varchar2(15),
	name varchar2(20),
	phone1 varchar2(6),
	phone2 varchar2(6),
	phone3 varchar2(6),
	email varchar2(30)
);

insert into spmember values('scott', '1234', '홍길동', '010', '6400','6068', 
'hong1@naver.com');

select * from BOARD
select * from spmember

alter table spmember modify phone3 varchar2(15);
alter table spmember modify phone1 varchar2(15);
alter table spmember modify phone2 varchar2(15);



Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길동', 'abcd@naver.com', '1234', '첫방문','반갑습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '게시판 개설','축하드립니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길서', 'bnbn@naver.com', '1234', '갯골마을',
'돼지 삼겹살이 맛있습니다');
Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길북', 'gre@daum.ner', '1234', '2020년 가을',
'날씨 좋고 화창합니다');


Insert into board(num, name, email, pass, title, content)
values(board_seq.nextVal, '홍길남', 'addd@naver.com', '1234', '스프링프레임워크 질문입니다',
'이미지 파일을 저장하고 다시 불러오는 명령은 무엇인가요');


select ROWNUM as row_num, board.* from board order by num desc