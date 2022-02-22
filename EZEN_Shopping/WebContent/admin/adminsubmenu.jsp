<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">

li:hover a{
 border-bottom: 1px solid blak;
    color: #0058A3;
}
.text{ font-family: sans-serif, serif; }

    </style>
<div id="submebe_nav">
<div class="submenu" style="float: left; margin-right: 10px; margin-left:10%;">
<h1 style="padding: 5px; border-bottom:4px solid #0058A3; border-bottom: double; text-align: right; color:#black;">Admin Menu</h1>
    <ul class="text"style="float: right">
       <img src="images/mypage.PNG" style="position: relative; top:40px; right:5px;">
       <li style="list-style-type: none;margin-top: 10px;"><a href='ezen.do?command=adminmemberlist' style="text-decoration: none; color: #666; border-bottom: 1px dotted #666; display: block; width: 108px;height: 25px; padding: 5px;
       text-align: right;">회원리스트</a></li>
       <img src="images/cart.PNG" style="position: relative; top:32px; right:5px;">
       <li style="list-style-type: none;"><a href='ezen.do?command=admin_product_list' style="text-decoration: none; color: #666; border-bottom: 1px dotted #666; display: block; width: 108px; height: 25px; padding: 5px;
       text-align: right;">&nbsp;상품리스트</a></li>
      <img src="images/zzim.PNG" style="position: relative;top:30px; right:5px;">
       <li style="list-style-type: none;"><a href='ezen.do?command=admin_order_list' style="text-decoration: none; color: #666; border-bottom: 1px dotted #666; display: block; width: 108px; height: 25px; padding: 5px;
       text-align: right;">주문리스트</a></li>
        <img src="images/category_arrow.png" style="position: relative;top:31px; right:5px;">
       <li style="list-style-type: none;"><a href='ezen.do?command=admin_delivery' style="text-decoration: none; color: #666; border-bottom: 1px dotted #666; display: block; width: 108px; height: 25px; padding: 5px;
       text-align: right;">배송처리</a></li>
       
       <img src="images/Shipping.PNG" style="position: relative; top:30px; right:5px;">
       <li style="list-style-type: none;"><a href='ezen.do?command=admin_delivery_ok' style="text-decoration: none; color: #666; border-bottom: 1px dotted #666; display: block; width: 108px; height: 25px; padding:5px; 
       text-align:right;">  배송리스트</a></li>
       
        
       <img src="images/g.PNG" style="position: relative; top:30px; right:5px; width: 30px;">
       <li style="list-style-type: none;"><a href='ezen.do?command=dashboard' style="text-decoration: none; color: #666; border-bottom: 1px dotted #666; display: block; width: 108px; height: 25px; padding:5px; 
       text-align:right;">  대시보드</a></li>
    </ul> 
    </div>
</div>
