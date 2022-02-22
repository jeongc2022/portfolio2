<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="../header.jsp"/>
<div style="width: 1200px; height: 800px; margin: 0 auto;position: relative; top:100px; text-align: center;">
<h1>찾아오시는길</h1>
<div id="map" style="width:600px;height:500px; margin:0 auto;"></div>
<div id="clickLatlng"></div>
   <br>
        <span style="font-weight: bold;">주소:</span><span>서울 서대문구 신촌로 141 은하빌딩 1층 EZEN</span>
        <br>
        <div style="width: 70px; height: 35px; background: #003399;  line-height: 35px; position: relative; right: -832px; top:20px;"><a href="https://map.kakao.com/link/to/서울 서대문구 신촌로 141 은하빌딩 1층,37.55690748337801,126.94159858057145" style="color: white; text-decoration: none;">길찾기</a></div>
</div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=46ec8ca23dc96a550eb69260db1979bc&libraries=services,clusterer,drawing"></script>
	<script>
	var mapContainer = document.getElementById('map'), 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), 
        level: 2
    };  
  
var map = new kakao.maps.Map(mapContainer, mapOption); 

var geocoder = new kakao.maps.services.Geocoder();

geocoder.addressSearch('서울 서대문구 신촌로 141 은하빌딩', function(result, status) {

     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">EZEN Shopping</div>'
        });
        infowindow.open(map, marker);

        map.setCenter(coords);
    }
});
	</script>
<jsp:include page="../footer.jsp"/>