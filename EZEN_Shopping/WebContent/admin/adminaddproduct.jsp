<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<jsp:include page="adminheader.jsp" />
<jsp:include page="adminsubmenu.jsp" />
<style type="text/css">
.productlist_body {
   position: relative;
   width: 1100px;
   margin: 0 auto;
   text-align: center;
}

table {
   width: 900px;
   text-align: center;
   margin-top: 10px;
   margin-bottom: 20px;
   border: 1px solid #e8e8e8;
}

.product_list_table {
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

.product_list_table td {
   text-align: center;
}

.b_kind {
   width: 100px;
   border-style: none;
}

.m_kind {
   width: 100px;
   border-style: none;
}

.admin_inputdata {
   border-style: none;
}

#sellingarea {
   width: 100px;
   border-style: none;
}
</style>
<script src="js/jquery-3.5.1.js"></script>
<script type="text/javascript">
   $(document).ready(
         function() {
            var num1 = [ '노트북', '데스크탑', '스피커', '전기면도기' ];
            var num2 = [ '청소기', '냉장고', '김치냉장고', '에어컨' ];
            var num3 = [ '믹서기', '식기세척기', '칼/도마', '유리제품' ];
            var num4 = [ '침대', '이불', '배게+커버', '매트리스' ];
            $('.b_kind').change(
                  function() {
                     var sel = $(this).val();
                     if (sel == 1) {
                        var temp = 1;
                        $('.op').remove();
                        $.each(num1, function(i, item) {
                           $('.m_kind').append(
                                 '<option class="op" value="'+temp+'"'+'>'
                                       + item + '</option>');

                           temp += 1;
                        });
                     } else if (sel == 2) {
                        var temp = 5;
                        $('.op').remove();
                        $.each(num2, function(i, item) {
                           $('.m_kind').append(
                                 '<option class="op" value="'+temp+'"'+'>'
                                       + item + '</option>');

                           temp += 1;
                        });
                     } else if (sel == 3) {
                        var temp = 9;
                        $('.op').remove();
                        $.each(num3, function(i, item) {
                           $('.m_kind').append(
                                 '<option class="op" value="'+temp+'"'+'>'
                                       + item + '</option>');
                           temp += 1;
                        });
                     } else if (sel == 4) {
                        var temp = 13;
                        $('.op').remove();
                        $.each(num4, function(i, item) {
                           $('.m_kind').append(
                                 '<option class="op" value="'+temp+'"'+'>'
                                       + item + '</option>');
                           temp += 1;
                        });
                     }
                  });
         });

    function go_add() {
      var sellingarea = $('#sellingarea option:selected').val();
      var color = $('#color').val();
      var qty = $('#qty').val();
      var pname = $('#pname').val();
      var oriprice = $('#oriprice').val();
      var price = $('#price').val();
      var margin = $('#margin').val();
      var img1 = $('#img1').val();
      var img2 = $('#img2').val();
      var img3 = $('#img3').val();
      var img4 = $('#img4').val();
      var content = $('#contents').val();
      var kind = $('#kind option:selected').val();

      
      /* document.frmm.action = "ezen.do?command=admin_add_product&sellingarea="
         + sellingarea + "&color=" + color + "&pty=" + qty + "&pname="
         + pname + "&oriprice=" + oriprice + "&price=" + price
         + "&margin=" + margin + "&content=" + content + "&kind=" + kind
         + "&img1=" + img1;
      document.frmm.encoding = "multipart/form-data";
      document.frmm.submit(); */
      return true;
      
   } 
</script>
<div class="productList_base">
   <article id="product_detail">
      <h2
         style="text-align: left; font-style: monospace; text-decoration: underline dashed;">Add
         Product</h2>

      <form name="frmm" method="post" enctype="multipart/form-data" action="ezen.do?command=admin_add_product">
         <div id="table_box"
            style="position: relative; width: 910px; height: 40px;">
            <div id="detail_bottom"
               style="position: relative; width: 150px; height: 30px; float: right;">
               <input class="btn" type="submit" value="등록" onClick="return go_add()">
               <input class="btn" type="button" value="목록" onClick="go_list()">
               <input class="btn" type="button" value="취소" onClick="go_cancel()">
            </div>
         </div>
         <table id="list" style="font-style: monospace;">
            <tr>
               <th>판매 매장</th>
               <td colspan="4"><select id="sellingarea" name="sellingarea">
                     <option>선택</option>
                     <option value="고양">고양</option>
                     <option value="광명">광명</option>
                     <option value="기흥">기흥</option>
                     <option value="동부산">동부산</option>
               </select></td>
            </tr>
            <tr>
               <th>상품 분류</th>
               <td style="width: 220px;"><select class="b_kind" name="kind">
                     <option>대분류</option>
                     <option value="1">전자제품</option>
                     <option value="2">가전제품</option>
                     <option value="3">주방용품</option>
                     <option value="4">침구류</option>
               </select> <select class="m_kind" id="kind" name="skind">
                     <option class="op">중분류</option>
               </select></td>
               <th>상품 색깔</th>
               <td><input type="text" class="admin_inputdata" id="color" name="color"></td>
               <th>상품 수량</th>
               <td colspan="3"><input type="text" class="admin_inputdata"
                  id="qty"  name="qty"></td>
            </tr>
            <tr>
               <th align="center">상품명</th>
               <td colspan="5"><input type="text" class="admin_inputdata"
                  id="pname"  name="pname"></td>
            </tr>
            <tr>
               <th>원가[A]</th>
               <td width="100"><input type="text" class="admin_inputdata"
                  id="oriprice"  name="oriprice"></td>

               <th>판매가[B]</th>
               <td width="100"><input type="text" class="admin_inputdata"
                  id="price"  name="price"></td>

               <th>마진[B-A]</th>
               <td width="100"><input type="text" class="admin_inputdata"
                  id="margin"  name="margin"></td>

            </tr>

            <tr>
               <th>상품 이미지</th>
               <td colspan="5" height="200px" align="center">
                  <input type="file" name="imgurl1" id="img1"> 
                  <input type="file" name="imgurl2" id="img2"><br> 
                  <input type="file" name="imgurl3" id="img3"> 
                  <input type="file" name="imgurl4" id="img4">
               </td>
            </tr>
            <tr>
               <th>상세 설명</th>
               <td colspan="5" style="text-align: left;"><textarea rows="10"
                     cols="70" id="contents"  name="content"></textarea></td>
            </tr>
         </table>


      </form>
   </article>
</div>

<jsp:include page="adminfooter.jsp" />