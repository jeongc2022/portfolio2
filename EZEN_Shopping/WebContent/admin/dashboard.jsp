<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	width: 1200px;
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
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
   <script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawVisualization);
	
		function drawVisualization() { 
			var data = google.visualization.arrayToDataTable([
					['ProductName','판매량'],
					['노트북',12],
					['데스크탑',26],
					['스피커',9],
					['전기면도기',21],
					['청소기',14],
                    ['냉장고',1],
					['김치냉장고',9],
					['믹서기',8],
					['식기세척기',19],
					['칼/도마',2],
                    ['침대',4],
					['이불',1],
					['베개+커버',20],
					['매트릭스',5]
				]);
			var options = {
					title : '상품별 누적 판매량',
					vAxis: {title: '판매량'},
					hAxis: {title: '상품'}, 
					seriesType: 'bars',
					series: {1: {type: 'line'}}
				};
			
			var chart = new google.visualization.ComboChart(document.getElementById('chart_div'));
			chart.draw(data, options);
		}
       google.load("visualization","1",{packages:["corechart"]});
       google.setOnLoadCallback(drawChart);
       function drawChart(){
           var data = google.visualization.arrayToDataTable([
               ['성별','명'],
               ['남성',35],
               ['여성',29]
           ]);
           var options = {title:'성비율',is3D:true};
           var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
           chart.draw(data,options);
       }
	</script>
<div class="productList_base">
	<article style="margin-left:120px;">
		<img src="images/g.PNG" style="position: relative; float:left; margin-right:10px; margin-top:3px;  width: 30px;">
      <h2 style="text-align: left; font-style: monospace; text-decoration:underline dashed;">Dashboard</h2>
      <div id="usercount" style="width: 280px; height: 120px; border: 1px solid black; float: left; position: relative">
          <img src="images/user.PNG" style="width: 80px; height: 80px; position: absolute; left:15px; top:20px;">
          <div style="margin-top: 15px;">
              <span style="font-weight: bold; font-size: 40px;">64</span>
          </div>
          <div style="margin-top: 5px; margin-left: 5px;">
              <span style="font-weight: bold; font-size: 20px;">AllUser</span>
          </div>
      </div>
      
      <div id="usercount" style="width: 280; height: 120px; border: 1px solid black; float: left; margin-left: 30px; position: relative;">
         <img src="images/won.PNG" style="width: 80px; height: 80px; position: absolute; left:15px; top:10px;">
          <div style="margin-top: 15px; margin-left: 50px;">
              <span style="font-weight: bold; font-size: 30px;">8,970,000</span>
          </div>
          <div style="margin-top: 15px; margin-left: 5px;">
              <span style="font-weight: bold; font-size: 20px;">sales</span>
          </div>
      </div>
      
      <div id="usercount" style="width: 280; height: 120px; border: 1px solid black; float: left; margin-left: 30px; position: relative;">
          <img src="images/cart1.PNG" style="width: 80px; height: 80px; position: absolute; left:15px; top:20px;">
          <div style="margin-top: 15px;">
              <span style="font-weight: bold; font-size: 40px;">151</span>
          </div>
          <div style="margin-top: 5px; margin-left: 5px;">
              <span style="font-weight: bold; font-size: 20px;">Purchase</span>
          </div>
      </div>
	</article>
<div id="chart_div" style="width:1200px; height: 500px; position: relative; top:200px; left:0;"></div>
<div id="piechart_3d" style="width: 900px; height: 500px; margin-top: 150px; margin-left: 200px;"></div>
</div>
<jsp:include page="adminfooter.jsp" />