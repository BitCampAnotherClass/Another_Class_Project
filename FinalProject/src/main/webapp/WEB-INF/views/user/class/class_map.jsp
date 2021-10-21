<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="<%=request.getContextPath()%>/css/user/classMap.css" rel="stylesheet" type="text/css"/>


<style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
</style>


<article id="container">
	<div class="class-map-wrap">
		<section id="class-map-view">
			<div id="menu_wrap" class="bg_white">
				<div class="option">
		            <div>
		                <form onsubmit="searchPlaces(); return false;">
		                    키워드 : <input type="text" value="이태원 맛집" id="keyword" size="15"> 
		                    <button type="submit">검색하기</button> 
		                </form>
		            </div>
		        </div>
			</div>
			
		</section>
		<section class="class-map-list">
			<div class="class-list1-top">
				<h3 class="text-h3">내 주변 클래스</h3>
				<div class="class-search">
					<input class="search-bar" type="text" placeholder="관심있는 취미를 찾아보세요." />
					<button class="place-select select-btn" type="button">지역 선택</button>
					<button class="category-select select-btn" type="button">카테고리 선택</button>
				</div>
			</div>
			
			<div class="class-list1">
				<ul id="placesList">
					<li>
						<div class="class-list-thumb"><img src="<%=request.getContextPath()%>/img/jisu/img300.png"/></div>
						<div class="class-list-info">
							<div class="class-category">핸드메이드</div>
							<div class="class-name">직접 만들고 선물하는 재미! 서진과 함께 뜨는 코바늘 수세미</div>
							<div class="class-like">♥ 150</div>
							<div class="class-addr">경기도 고양시 덕양구 오부자로150</div>
							<div class="class-point">★★★★★ 5.0</div>
							<div class="class-price">55,000원</div>
						</div>
					</li>
					<li>
						<div class="class-list-thumb"><img src="<%=request.getContextPath()%>/img/jisu/classimg4.png"/></div>
						<div class="class-list-info">
							<div class="class-category">핸드메이드</div>
							<div class="class-name">직접 만들고 선물하는 재미!</div>
							<div class="class-point">★★★★★ 4.3</div>
							<div class="class-like">♥ 150</div>
							<div class="class-addr">경기도 고양시 덕양구 오부자로150</div>
							<div class="class-price">6,255,000원</div>
						</div>
					</li>
					<li>
						<div class="class-list-thumb"><img src="<%=request.getContextPath()%>/img/jisu/classimg3.png"/></div>
						<div class="class-list-info">
							<div class="class-category">핸드메이드</div>
							<div class="class-name">직접 만들고 선물하는 재미! 서진과 함께 뜨는 코바늘 수세미 직접 만들고 선물하는</div>
							<div class="class-point">★★★★★ 4.3</div>
							<div class="class-like">♥ 150</div>
							<div class="class-addr">경기도 고양시 덕양구 오부자로150</div>
							<div class="class-price">5,000원</div>
						</div>
					</li>
					<li>
						<div class="class-list-thumb"><img src="<%=request.getContextPath()%>/img/jisu/img300.png"/></div>
						<div class="class-list-info">
							<div class="class-category">핸드메이드</div>
							<div class="class-name">직접 만들고 선물하는 재미! 서진과 함께 뜨는 코바늘 수세미</div>
							<div class="class-point">★★★★★ 4.3</div>
							<div class="class-like">♥ 150</div>
							<div class="class-addr">경기도 고양시 덕양구 오부자로150</div>
							<div class="class-price">55,000원</div>
						</div>
					</li>
					<li>
						<div class="class-list-thumb"><img src="<%=request.getContextPath()%>/img/jisu/classimg4.png"/></div>
						<div class="class-list-info">
							<div class="class-category">핸드메이드</div>
							<div class="class-name">직접 만들고 선물하는 재미! 서진과 함께 뜨는 코바늘 수세미</div>
							<div class="class-point">★★★★★ 4.3</div>
							<div class="class-like">♥ 150</div>
							<div class="class-addr">경기도 고양시 덕양구 오부자로150</div>
							<div class="class-price">355,000원</div>
						</div>
					</li>
					<li>
						<div class="class-list-thumb"><img src="<%=request.getContextPath()%>/img/jisu/classimg3.png"/></div>
						<div class="class-list-info">
							<div class="class-category">핸드메이드</div>
							<div class="class-name">직접 만들고 선물하는 재미! 서진과 함께 뜨는 코바늘 수세미</div>
							<div class="class-point">★★★★★ 4.3</div>
							<div class="class-like">♥ 150</div>
							<div class="class-addr">경기도 고양시 덕양구 오부자로150</div>
							<div class="class-price">155,000원</div>
						</div>
					</li>
				</ul>
			</div>
		</section>
		
	</div>
</article>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=033542c9317694f8d1bb2f13c3b67a2a&libraries=services"></script>

<script>

$(function(){

	initMap();
	
	var map;
	var geocoder;
	
	// 마커를 담을 배열입니다
	var markers = [];
	
	var addr;
	var className;
	var classImg;
	var classPrice;
	
	// 클래스 목록 가져오기
	function setClassList(){
		console.log('실행1');
		var url = '<%=request.getContextPath()%>/classMap/list';
		console.log('실행2');
		// var params = 
		$.ajax({
			url: url,
			//data: ,
			success: function(result){
				console.log('실행3');
				var r = $(result);
				console.log(r);
				var tag='';
				console.log('실행4');
				$('#placesList').html('');
				r.each(function(idx){
					tag = '<li>';
					tag += '<div class="class-list-thumb"><img src="<%=request.getContextPath()%>/img/jisu/classimg3.png"/></div>';
					tag += '<div class="class-list-info">';
					tag += '<div class="class-category">핸드메이드</div>';
					tag += '<div class="class-name">직접 만들고 선물하는 재미! 서진과 함께 뜨는 코바늘 수세미</div>';
					tag += '<div class="class-point">★★★★★ 4.3</div>';
					tag += '<div class="class-like">♥ 150</div>';
					tag += '<div class="class-addr">경기도 고양시 덕양구 오부자로150</div>';
					tag += '<div class="class-price">155,000원</div>';
					tag += '</div>';
					tag += '</li>';
					
					$('#placesList').append(tag);
				});
				console.log('실행5');
			}, error: function(e){
				console.log('리스트 불러오기 에러');
			}
		});
		
		addrArr = ['경기도 고양시 덕양구 오부자로150', '서울 서초구 서초동', '서울 마포구 백범로', '서울 마포구 양화로125', '서울 종로구 종로3가', '경기도 고양시 덕양구 지축동 490-61']; // 주소
		classNameArr = ['1서울 선유도', '1서울 서초구 서초동', '1서울 마포구 백범로', '1서울 마포구 양화로125', '1서울 종로구 종로3가', '1경기도 고양시 덕양구 지축동 490-61'];
		classImgArr = ['/img/jisu/img300.png', '/img/jisu/classimg3.png', '/img/jisu/classimg2.png', '/img/jisu/classimg5.png', '/img/jisu/classimg5.png', '/img/jisu/classimg5.png'];
		classPriceArr = ['100000', '200000', '50000', '25000', '70000', '35000'];
	}
	
	// 지도 생성
	function initMap(){
		var latitude = 37.566826;
		var longitude = 126.9786567;
		
		setClassList();

		var mapContainer = document.getElementById('class-map-view'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
		        level: 3 // 지도의 확대 레벨
		    };  
	
		// 지도를 생성합니다    
		map = new kakao.maps.Map(mapContainer, mapOption); 
	
		geocoder = new kakao.maps.services.Geocoder();
		for(var i=0; i<classNameArr.length; i++){
			setMapPosition(addrArr[i], classNameArr[i], classImgArr[i], classPriceArr[i]);
		}
		
	}
	
	// 주소-좌표 변환 객체를 생성합니다
	
	
	// 주소 - 좌표 변환 + 마커 생성
	function setMapPosition(addr, className, classImg, classPrice){
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch( addr , function(result, status) {
		
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		        // 결과값으로 받은 위치를 마커로 표시합니다
		        var marker = new kakao.maps.Marker({
		            map: map,
		            position: coords
		        });
				
		        var markerInfo = '<div class="markerInfo">';
		        markerInfo += '<div class="marker-class-img"><img src="<%=request.getContextPath()%>' + classImg + '"/></div>';
		        markerInfo += '<div class="marker-class-info">'
		        markerInfo += '<div class="marker-class-category">' + '핸드메이드' + '</div>'
		        markerInfo += '<div class="marker-class-name">' + className + '</div>';
		       // markerInfo += '<div class="marker-class-like">' + '♥ 150' + '</div>';
		        markerInfo += '<div class="marker-class-addr">' + addr + '</div>';
		       // markerInfo += '<div class="marker-class-point">' + '★★★★★ 5.0' + '</div>';
		        markerInfo += '<div class="marker-class-price">' + classPrice + '원</div>';
		        markerInfo += '</div>';
		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new kakao.maps.InfoWindow({
		            content: markerInfo
		        });
		        infowindow.open(map, marker);
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		        
		    } //if
		});   
	
	} //setMapPosition
	
	
	//function setClassList(addr, className, classImg, classPrice){
		
	//}

});
	
	
</script>