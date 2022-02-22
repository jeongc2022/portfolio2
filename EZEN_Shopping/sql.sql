create table ezenuser(
name varchar2(20) not null,
birth varchar2(20) not null,
phone varchar2(20) not null,
gender varchar2(10),
doroaddress varchar2(50),
address varchar2(50) not null,
postnum varchar2(20),
zip_num number(5)not null,
prefershop varchar(20),
email varchar2(20) primary key,
pwd varchar2(20) not null
)

drop table ezenuser
select * from ezenuser
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('김누구','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab1@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('김무개','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab2@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('아무나','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab3@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('홍미리','1990-01-01','01012345678','F','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab4@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('김소미','1990-01-01','01012345678','F','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab5@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('누구게','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab6@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('둘리','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab7@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('짱구','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab8@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('루피','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab9@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('샹크스','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab10@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('나미','1990-01-01','01012345678','F','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','a11@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('조보아','1990-01-01','01012345678','F','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab12@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('강호동','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab13@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('토르','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab14@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('제우스','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab15@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('영구','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab16@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('훈이','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab17@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('철수','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab18@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('영희','1990-01-01','01012345678','F','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab19@naver.com','1234');
insert into ezenuser(name,birth,phone,gender,doroaddress,address,postnum,zip_num,prefershop,email,pwd) values('구구구','1990-01-01','01012345678','M','고봉로 333번길-1','테스트아파트 101동 101호','111-222',1,'고양','ab20@naver.com','1234');
select * from ezenuser 




drop table ezenuser



create table catbot(
key varchar2(20) primary key,
answer varchar2(1000)
)


insert into catbot values('배송','상품은 주문확인 이 후 일반상품은 평일기준 2~5일, 프리오더/제작/수입상품은 평일 기준 10~15일정도 입고기간이 소요되며, 순차적 발송이 이루어지고 있습니다.');
insert into catbot values('환불/반품','받아보신 상품은 수령 후 일주일 이내로 CJ대한통운(☎1588-1255)로 반품예약 후 메모(성함/연락처/사유)와 택배비 5천원 동봉하여 보내주시면 됩니다.');
insert into catbot values('입금','입금처리는 자동으로 이루어집니다. 결제 이 후 40분 이내 입금확인이 안되었을 경우 게시판에 내용을 남겨주시면 확인 후 입금확인처리 를 해드리겠습니다.');

select * from catbot
create table usercatbot(
ucseq number(5),
email varchar2(20),
key varchar2(20),
answer varchar2(1000)
)
create sequence ucseq_seq start with 1;
select * from usercatbot

delete from usercatbot

drop table ezenproduct
alter table ezenproduct modify (pname varchar2(100));
create table ezenproduct(
pseq number(5) primary key,
pname varchar2(50),
oriprice number(10),
price number(10),
margin number(10),
qty number(10) default 0,
sellingarea varchar2(10),
content varchar2(200),
color varchar2(10),
kind varchar2(5),
imgurl varchar2(50)
)
create sequence ezproduct_seq start with 1;

delete from 

insert into ezenproduct values(ezproduct_seq.nextval,'드래곤플라이i3',800000,1000000,200000,5,'고양','오피스,포토샾 등 업무에 특화된 노트북 간단한 게임도 OK!','black','1','dragonflyi3.jpg');

insert into ezenproduct values(ezproduct_seq.nextval,'씽크패드 X1 익스트림',3000000,5000000,2000000,1,'고양','레노버에서 자랑하는 게이밍 노트북! 현존하는 노트북에서도 감히 최고라고 할수있는 성능 ','black','1','ThinkPad X1 Extreme 3.JPG');
insert into ezenproduct values(ezproduct_seq.nextval,'엘리트 드래곤플라이i5',1800000,2000000,200000,2,'광명','대학생이 선호하는 노트북 1위 i5에 cpu로 인한 멀티기능 특화','gray','1','elite dragonflyi5.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'엘리트 X2',500000,700000,200000,7,'기흥','새로워진 엘리트 노트북 전작에 단점인 화면크기와 속도를 UP! 빠른 처리속도로 답답함은 사라진 노트북','silver','1','elite x2.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'엘리트북840',900000,1100000,200000,1,'동부산','더 새로워진 엘리트북 새로운 내장그래픽으로 원활한 포토샾과 리그오브레전드 를 재밌게 플레이 하실수 있습니다.','black','1','elitebook840.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'hp 프로북 450',400000,600000,200000,2,'고양','간단한 회사 업무나 대학생들 과제의 특화된 노트북 저렴하지만 강력한 노트북!','black','1','hp probook450.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'아이디어패드 게이밍3',1500000,2000000,500000,0,'고양','검은사막,리그오브레전드,배틀그라운 가능한 노트북 냉각기능 또한 우수하여 몇시간을 플레이하던 원할한 사용 가능한 노트북','black','1','ideapad gamaing3.JPG');
insert into ezenproduct values(ezproduct_seq.nextval,'아이디어패트 게이밍 3i',2000000,3000000,1000000,2,'기흥','전작인 아이디어패드 게이밍3 의 업그레이드 버전! 우수한 그래픽카드와 한층 업그레이드된 냉각기능, 10시간을 사용할수있는 배터리!','black','1','ideapad gaming 3i.JPG');
insert into ezenproduct values(ezproduct_seq.nextval,'아이디어패트L340',900000,1200000,300000,10,'광명','아이디어 패드의 새로운 모델','black','1','dragonflyi3.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'레노버 리전 7',1500000,2000000,500000,5,'고양','레노버 리엔5의 개선판 빠른 와이파이, 빠른 블르투스 연결까지 언제 어디서든 쉽게 사용할수있는 가벼운 무게','black','1','Lenovo Legion Legion7.JPG');
insert into ezenproduct values(ezproduct_seq.nextval,'레노버 리전 5',900000,1200000,300000,0,'동부산','레노버가 새롭게 선보인 노트북! 얇은 베젤, 180도까지 내려가는 화면! 회의에 특화된 노트북','silver','1','Lenovo Legion Legion 5.JPG');
insert into ezenproduct values(ezproduct_seq.nextval,'파빌리온 게이밍15',3200000,4000000,800000,9,'고양','최고의 게이밍 노트북을 찾는다면 파빌리온 게이밍15! 144헤르츠의 모니터 주사율 게이밍 노트북은 다 무겁다? 1.5키로의 가벼운 게이밍 노트북!','black','1','pavilion gaming15.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'프로북440',800000,1000000,200000,5,'기흥','1키로그램도 안되는 가벼운 무게! 언제 어디서든 들고다니며 업무를 하기에 최적화된 노트북','black','1','pavilion gaming15.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'씽크패드 e14',500000,700000,200000,1,'고양','레노버 노트북 판매1위! 14인치의 디스플레이 내장 그래픽이지만 강력한 퍼포먼스를 뽐내주는 노트북','gray','1','thinkpad e14.JPG');
insert into ezenproduct values(ezproduct_seq.nextval,'씽크패드 e15',800000,1000000,200000,5,'고양','레노버 씽크패드 14의 상위 버전! 더 넓은 화면을 원하는 고객분들께 추천드리는 노트북!!!','black','1','thinkpad e15.JPG');
insert into ezenproduct values(ezproduct_seq.nextval,'씽크패드 t15',1300000,1500000,200000,1,'고양','씽크패드 e 버전의 개선판! 넓은화면 넓은 시야각 햇빛 아래에서도 또렷한 화면을 볼수있는 강력한 모니터를 탑재한 노트북','black','1','thinkpad t15.JPG');
delete from ezenproduct where pseq = 16
drop table ezenproduct
select * from ezenproduct



create table ezencart(
cseq number(5) primary key,
pseq number(5) references ezenproduct(pseq),
qty number(5),
email varchar2(50)
);
create sequence ezencart_seq start with 1;
insert into ezencart values(ezencart_seq.nextval,8,2,'abc@naver.com');
insert into ezencart values(ezencart_seq.nextval,9,2,'abc@naver.com');
insert into ezencart values(ezencart_seq.nextval,10,2,'abc@naver.com');
insert into ezencart values(ezencart_seq.nextval,11,2,'abc@naver.com');
insert into ezencart values(ezencart_seq.nextval,12,2,'abc@naver.com');
insert into ezencart values(ezencart_seq.nextval,13,2,'abc@naver.com');


create view cartview as 
select a.pseq , a.pname , a.oriprice , a.price , a.margin ,a.sellingarea , a.content, a.color,a.kind,a.imgurl,b.cseq,b.qty,b.email
from ezenproduct a, ezencart b
where a.pseq = b.pseq;
delete from cartview
select * from cartview

create table ezenboard(
bemail varchar(20),
bnum number(5) primary key,
btitle varchar2(50),
bcontent varchar2(1000),
bhit number(5) default 0,
bdate date default sysdate,
name varchar2(20),
prefershop varchar2(20)
)
insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop)values('abc@naver.com',ezenboard_seq.nextval,'첫번째 게시물','첫번째 내용입니다.','테스트','고양');
insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop)values('abc@naver.com',ezenboard_seq.nextval,'배송이 언제될까요','노트북 주문했는데 배송날 알고싶어요 ㅠㅠ','김형기','기흥');
insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop)values('abc@naver.com',ezenboard_seq.nextval,'입금 확인 부탁드려요','오늘 저녁에 입금 했는데 아직 입금 확인이 안되어있어요','아무개','동부산');
insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop)values('abc@naver.com',ezenboard_seq.nextval,'환불 해주세요','택배 금방 받았는데 찍힘이 있네요 환불 부탁드립니다','홍길동','광명');
insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop)values('abc@naver.com',ezenboard_seq.nextval,'레노버 노트북 언제 입고 되나요...?','한달째 매진이라 사고싶은데 살수가없네요 입고 언제될까요?','홍길순','고양');
insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop)values('abc@naver.com',ezenboard_seq.nextval,'첫번째 게시물','첫번째 내용입니다.','테스트','고양');
insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop)values('abc@naver.com',ezenboard_seq.nextval,'배송이 언제될까요','노트북 주문했는데 배송날 알고싶어요 ㅠㅠ','김형기','기흥');
insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop)values('abc@naver.com',ezenboard_seq.nextval,'입금 확인 부탁드려요','오늘 저녁에 입금 했는데 아직 입금 확인이 안되어있어요','아무개','동부산');
insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop)values('abc@naver.com',ezenboard_seq.nextval,'환불 해주세요','택배 금방 받았는데 찍힘이 있네요 환불 부탁드립니다','홍길동','광명');
insert into ezenboard (bemail,bnum,btitle,bcontent,name,prefershop)values('abc@naver.com',ezenboard_seq.nextval,'레노버 노트북 언제 입고 되나요...?','한달째 매진이라 사고싶은데 살수가없네요 입고 언제될까요?','홍길순','고양');
create sequence ezenboard_seq start with 1;
drop sequence ezenboard_seq
drop table ezenboard

create table ezenreply(
rnum number(5) primary key,
bnum number(5) references ezenboard(bnum),
email varchar2(50),
name varchar2(20),
rdate date default sysdate,
rcontent varchar2(200)
)
create sequence ezenreply_seq start with 1;
insert into ezenreply(rnum,bnum,email,name,rcontent) values(ezenreply_seq.nextval,40,'abc@naver.com','홍길순','배송 아직도 안됬나요?');
insert into ezenreply(rnum,bnum,email,name,rcontent) values(ezenreply_seq.nextval,40,'aa@naver.com','홍길남','저도 아직 안되어있네요 ㅠㅠ');

select * from ezenproduct where kind='5'


insert into ezenproduct values(ezproduct_seq.nextval,'블랙앤데커 4in1 핸디 무선청소기',30000,54900,24900,11,'고양','강한 흡입력을 자랑하는 리튬이온 4in1 핸디 무선 청소기 ','black','5','Black&Decker 4in1 Cordless.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'블랙앤데커 플랙시 핸디 무선청소기',70000,89900,19900,5,'광명','깨끗한 청소 세심한 디테일 ','black','5','Black&Decker Flexi Cordless Handy.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'블랙앤데커 스마트테크 듀얼 무선 청소기',100000,165900,65900,12,'광명','필요에 따라 스틱형, 핸디형으로 듀얼 사용 가능 ','black','5','Black&Decker smarttech Dual.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'블랙앤데커 무선 아쿠아 청소기 WD7201G/O',20000,37990,13790,2,'광명','물과 먼지를 손쉽게! ','orange','5','Black&Decker Wireless Aqua.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'보랄 핸디 무선 청소기 Q10',40000,64900,24900,22,'기흥','우리집 쾌적한 환경을 위한 최고의 선택 ','white','5','Boral Cordless Handy.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'블랙앤데커 핸디 무선청소기 (DVA320BF-KR)',40000,67900,27900,20,'광명','파워 모터로 무거운 부스러기나 많은 양의 먼지도 한 번에 흡입 ','black','5','DVA320BF-KR.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'에코벡스 디봇 로봇 청소기 오즈모 920',200000,399900,199900,12,'고양','아시아 1위 물걸레 청소로봇 ','black','5','ecovacs deebot ozmo920.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'일렉트로룩스 퓨어 Q9 파워프로 청소기 PQ92-2OGF',200000,349900,149900,12,'광명','마룻바닥에 최적화된 파워프로 롤러로 놓치기 쉬운 틈새 먼지부터 시리얼까지 효과적으로 흡입 ','black','5','electrolux pure q9.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'휴스톰 무선 물걸레 청소기 HS-9600',47900,147900,100000,15,'기흥','세계 최초 무선 듀얼스핀 물걸레 청소기 ','white','5','Hustorm HS-9600.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'엘지 코드제로 A9S A9700SK',919200,1149000,229800,11,'고양','차원이 다른 무선청소기 LG 코드제로 ','black','5','LG codezero a9s.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'엘지 코드제로 로봇 청소기',800000,1099000,209900,11,'동부산','인공지능 로봇 청소기의 시작, 새로운 기준 LG 코드제로 R9 ','black','5','LG codezero robotr9.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'밀레 진공 청소기 C3 Cat & Dog',300000,449900,149900,20,'기흥','1500W의 강력한 흡입력 ','wine','5','miele c3.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'밀레 청소기용 헤파필터 SF-HA30',35192,43990,8798,3,'광명','먼지.95% 이상 내부 보관하여 집 먼지 알레르기 관리 ','white','5','miele heap filter.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'삼성 제트 무선 청소기 ',589000,719000,130000,11,'동부산','삼성 특허기술인 27개 에어홀의 제트 싸이클론 적용 ','black','5','samsung jet.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'로토 무선 핸디형 청소기 SRV-2010C',67900,81480,13580,5,'기흥','세계 최초 무선 듀얼스핀 물걸레 청소기 ','white','5','SRV-2010C.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'삼성 제트 청소기 청정스테이션 세트 VS20R9044SBCS',720200,899000,179800,6,'기흥','최강의 흡입력, 99.99%의 미세먼지 배출차단 ','black','5','VS20R9044SBCS.jpg');

insert into ezenproduct values(ezproduct_seq.nextval,'바이타믹스 V1200i 블렌더 2L',400000,699000,299000,6,'기흥','완벽한 블렌딩을 위한 구성 ','black','9','Vitamix V1200i.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'엔씨유 홀 슬로우 쥬서 원액기',300000,369900,69900,3,'동부산','착즙량은 더 늘고, 편리함은 더 강화된 엔유씨 홀 슬로우 쥬서! ','wine','9','NUC Whole Slow Juicer.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'리큅 블렌더 1.7L',100000,214900,114900,5,'동부산','특허받은 입체 칼날 ','white','9','Lequip Blender 1.7L.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'블랙앤데커 고속 블렌더 2L',70000,98900,28900,1,'광명','못 먹는 거 빼고 다 갈아드립니다. ','metal','9','Black&Decker High Speed Blender 2L.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'필립스 비바 메탈 블렌더',50000,74900,24900,2,'고양','신선함 그대로 블렌딩하세요! 사용할수록 만족하는 비바 메탈 블렌더 ','metal','9','Philips Viva Metal Blender.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'해밀턴비치 뉴트리션 데일리 파워블렌더',40000,67900,27900,6,'기흥','더 빠르고 강하게! 해밀턴비치 뉴트리션 파워 블렌더 플러스 ','metal','9','Daily Power Blender.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'일렉트로룩스 크레이티브 블렌더',30000,59900,29900,1,'고양','강한 분쇄력으로 얼음까지 강력하게! ','white','9','EBR5604WK.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'필립스 블렌더',30000,54900,24900,2,'기흥','신선한 스무디와 얼음을 뚝딱! ','white','9','HR2104.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'제니퍼룸 과일 착즙기',40000,53900,13900,3,'동부산','살아있는 생과일을 즐겨라! 설탕없는 100% 과일주스를 집에서 즐겨보세요! ','metal','9','JR-OJ616.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'테팔 마스터 블렌드 핸드블렌더',40000,51900,11900,4,'기흥','30% 더 곱게 갈리는 테팔 파워엘릭스 칼날기술로 튀지않고 더 곱게 ','silver','9','HB65IDKR.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'WMF 컬트엑스 믹스앤고 미니블렌더',30000,49900,19900,1,'광명','독일 소비자 브렌드 1위 ','metal','9','WMF Cult.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'오스터 볼 메이슨 자 블렌더',30000,46990,16990,2,'광명','건강한 생활을 위한 우리집 건강지킴이! ','green','9','Jar Blender.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'진공 초고속 믹서기 HR3752',105000,205000,100000,1,'기흥','나를 위한 단 하나의 블렌더 ','black','9','HR3752.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'비앙코 스마트코너 초고속 블렌더 볼토 B573',200000,309000,109000,2,'고양','영양소 파괴를 줄여 더 건강하고 더 맛있게! 스마트한 우리집 건강도우미 ','black','9','B573.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'테팔 블렌더 블렌드포스 플러스 글라스 BL4351',30000,52900,22900,3,'기흥','단단한 얼음도 완벽하게 분쇄! ','white','9','BL4351.jpg');
insert into ezenproduct values(ezproduct_seq.nextval,'닌자 블렌더',188970,299000,89700,1,'고양','완벽한 블렌딩을 위한 구성 ','black','9','ninja.jpg');




create table admin(
email varchar2(30) primary key,
name varchar2(10),
pwd varchar2(30),
phone varchar2(20)
);

insert into admin values('admin1@naver.com','관리자','1234','01032345678');
insert into admin values('admin2@naver.com','관리자','1234','01052345678');
insert into admin values('admin3@naver.com','관리자','1234','01062345678');
insert into admin values('admin4@naver.com','관리자','1234','01072345678');



create table ezenorder(
eoseq number(5) primary key, --주문번호
email varchar2(30),
orderdate date default sysdate --주문 일자
)
insert into ezenorder(eoseq,email) values(order_seq.nextval,'abc@naver.com');
insert into ezenorder(eoseq,email) values(order_seq.nextval,'abc1@naver.com');
create sequence order_seq start with 1;

select * from ezenorder
delete from ezenorder where eoseq=4

create table ezenorder_d(
edseq number(5) primary key,
eoseq number(5) references ezenorder(eoseq),
pseq number(5) references ezenproduct(pseq),
quantity number(5),
result char(1) default '1',--1미처리 2 처리
delivery char(1) default '1' --1미처리 2 처리
)
create sequence orderD_seq start with 1;

insert into ezenorder_d(edseq,eoseq,pseq,quantity) values(orderD_seq.nextval,2,34,2)
insert into ezenorder_d(edseq,eoseq,pseq,quantity) values(orderD_seq.nextval,2,35,2)
insert into ezenorder_d(edseq,eoseq,pseq,quantity) values(orderD_seq.nextval,2,36,2)

insert into ezenorder_d(edseq,eoseq,pseq,quantity) values(orderD_seq.nextval,3,37,1);
insert into ezenorder_d(edseq,eoseq,pseq,quantity) values(orderD_seq.nextval,3,38,4);
insert into ezenorder_d(edseq,eoseq,pseq,quantity) values(orderD_seq.nextval,3,39,5);
select * from ezenorder_d
update ezenorder_d set result='1',delivery='1'
create or replace view ezenorder_view
as
select d.edseq,o.eoseq,o.email,o.orderdate,d.pseq,d.quantity,u.name,u.doroaddress,u.address,
u.postnum,u.zip_num,u.phone,p.pname,p.price,d.result,d.delivery
from ezenorder o, ezenorder_d d, ezenuser u, ezenproduct p
where o.eoseq=d.eoseq and o.email=u.email and d.pseq = p.pseq;


select * from ezenorder_view

select * from ezenorder_view order by result asc;


select * from ezenproduct where pname like '%레노버%'


create table ezenwish(
wseq number(5) primary key,
pseq number(5) references ezenproduct(pseq),
qty number(5),
email varchar2(50)
);


create sequence ezenwish_seq start with 1;
insert into ezenwish values(ezenwish_seq.nextval,8,2,'abc@naver.com');
insert into ezenwish values(ezenwish_seq.nextval,9,2,'abc@naver.com');
insert into ezenwish values(ezenwish_seq.nextval , 9,  2 , 'abc@naver.com');

create view wishview as 
select a.pseq , a.pname , a.oriprice , a.price , a.margin ,a.sellingarea , a.content, 
a.color,a.kind,a.imgurl,b.wseq,a.qty,b.email
from ezenproduct a, ezenwish b
where a.pseq = b.pseq;



select * from (select * from (select ROWNUM as row_num, ezenuser.* from (select * from ezenuser where name like'%%') ezenuser)
				where row_num >=1 )
				where row_num <=20;
				
select * from ezenproduct where pname like '%레노버%' and kind like '%1%'
				
select * from (select * from (select ROWNUM as row_num, ezenproduct.* from (select * from ezenproduct where pname like '%레노버%' and kind like '%%' order by pseq desc) ezenproduct)
			where row_num >=1 )
			where row_num <=10;	
			
create table ezenaddress(
postnum number(10),
doro varchar2(20)
)

select max(eoseq)as eoseq from ezenorder where email='abc1@naver.com'

select * from ezenorder

delete ezenproduct where pseq=63