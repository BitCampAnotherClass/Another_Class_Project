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
				<!-- 
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
					</li>-->
				</ul>
				<div class="more">
					<button type="button">+ more</button>
				</div>
				<!-- <div class="paging">
					<ul>
						<li class="page-item"><a href="#">1</a></li>
						<li class="page-item"><a href="#">2</a></li>
						<li class="page-item"><a href="#">3</a></li>
						<li class="page-item"><a href="#">4</a></li>
						<li class="page-item"><a href="#">5</a></li>
					</ul>
				</div>-->
			</div>
		</section>
		
	</div>
</article>


<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=033542c9317694f8d1bb2f13c3b67a2a&libraries=services"></script>

<script>

// 금액 숫자 3자리 단위마다 콤마(,) 찍기
function numberWithCommas(x) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}


$(document).ready(function(){

	
	
	var map;
	var geocoder;
	
	// 마커를 담을 배열입니다
	var markers = [];
	var infoArr=[]; // infoWindow 담을 배열
	var j=0;
	
	// 클래스 목록 정보 담을 배열
	var cateL_arr=[]; // 대분류 카테고리
	var category_arr = []; // 중분류 카테고리
	var className_arr = []; // 클래스 이름
	var nick_arr = []; // 강사 닉네임
	var likeCnt_arr = []; // 좋아요 수
	var starAvg_arr = []; // 별점 평균
	var classPrice_arr = []; // 클래스 가격
	var addr_arr = []; // 주소
	var classImg_arr = []; // 썸네일
	
	
	var listCnt = 5; // 목록에서 한 번에 보여줄 클래스 개수
	
	
	
	initMap(); // 지도 생성
	
	
	// 클래스 목록 가져오기
	function setClassList(){
		var url = '<%=request.getContextPath()%>/classMap/list';
		$.ajax({
			url: url,
			//data: ,
			async:false,
			success: function(result){
				var r = $(result);
				console.log(r);
				var tag='';
				
				$('#placesList').html('');
				r.each(function(idx){
					// 전역변수 배열에 해당 값 담기
					cateL_arr[idx] = r[idx].category_name;
					category_arr[idx] = r[idx].category_name;
					className_arr[idx] = r[idx].class_name;
					nick_arr[idx] = r[idx].nick;
					likeCnt_arr[idx] = r[idx].like_cnt;
					starAvg_arr[idx] = r[idx].star_avg;
					classPrice_arr[idx] = numberWithCommas(r[idx].class_price);
					addr_arr[idx] = r[idx].class_addr1;
					classImg_arr[idx] = r[idx].class_thumb;

					
					if( idx <= (listCnt-1) ){ // 처음 보여줄 클래스 목록
						tag = '<li>';
						tag += '<div class="class-list-thumb"><img src="' + r[idx].class_thumb + '"/></div>';
						tag += '<div class="class-list-info">';
						tag += '<div class="class-category">' + r[idx].cateL_name + ' > ' + r[idx].category_name + '</div>';
						tag += '<div class="class-name">' + r[idx].class_name + '</div>';
						tag += '<div class="class-creator">' + r[idx].nick + '</div>';
						tag += '<div class="class-point">★★★★★ ' + r[idx].star_avg + '</div>';
						tag += '<div class="class-like">♥ ' + r[idx].like_cnt + '</div>';
						tag += '<div class="class-addr">' + r[idx].class_addr1 + '</div>';
						tag += '<div class="class-price">' + numberWithCommas(r[idx].class_price) + '원</div>';
						tag += '</div>';
						tag += '</li>';	
						$('#placesList').append(tag);
						if(idx >= r.length-1){ // 남은 클래스가 없으면 more 버튼 숨기기
							$('.more > button').hide();
						}
					}
					var n=1;
					$('.more > button').click(function(){ // more 버튼 클릭 시 보여줄 클래스 목록
						n++;
						if( idx >= listCnt*(n-1) && idx <= (listCnt*n-1) ){
							tag = '<li>';
							tag += '<div class="class-list-thumb"><img src="' + r[idx].class_thumb + '"/></div>';
							tag += '<div class="class-list-info">';
							tag += '<div class="class-category">' + r[idx].cateL_name + ' > ' + r[idx].category_name + '</div>';
							tag += '<div class="class-name">' + r[idx].class_name + '</div>';
							tag += '<div class="class-creator">' + r[idx].nick + '</div>';
							tag += '<div class="class-point">★★★★★ ' + r[idx].star_avg + '</div>';
							tag += '<div class="class-like">♥ ' + r[idx].like_cnt + '</div>';
							tag += '<div class="class-addr">' + r[idx].class_addr1 + '</div>';
							tag += '<div class="class-price">' + numberWithCommas(r[idx].class_price) + '원</div>';
							tag += '</div>';
							tag += '</li>';	
							$('#placesList').append(tag);
							if(idx >= r.length-1){ // 남은 클래스가 없으면 more 버튼 숨기기
								$('.more > button').hide();
							}
						}
					});
					// 주소 - 좌표 변환 + 마커 + 인포윈도우 생성
					setMapPosition(cateL_arr[idx], category_arr[idx], className_arr[idx], nick_arr[idx], likeCnt_arr[idx], starAvg_arr[idx], classPrice_arr[idx], addr_arr[idx], classImg_arr[idx], idx);
					
				}); //each
			}, error: function(e){
				console.log('리스트 불러오기 에러');
			}
		}); // ajax
	}
	
	// 지도 생성
	function initMap(){
		console.log('실행2');
		console.log(cateL_arr);
		var latitude = 37.566826;
		var longitude = 126.9786567;
		

		var mapContainer = document.getElementById('class-map-view'), // 지도를 표시할 div 
		    mapOption = {
		        center: new kakao.maps.LatLng(latitude, longitude), // 지도의 중심좌표
		        level: 4 // 지도의 확대 레벨
		    };  
	
		// 지도 생성    
		map = new kakao.maps.Map(mapContainer, mapOption); 
		
		geocoder = new kakao.maps.services.Geocoder();
		// 클래스 목록 불러오기
		setClassList();
		
		/*for(var i=0; i < className_arr.length; i++){
			console.log(i);
			setMapPosition(cateL_arr[i], category_arr[i], className_arr[i], nick_arr[i], likeCnt_arr[i], starAvg_arr[i], classPrice_arr[i], addr_arr[i], classImg_arr[i]);
		}*/
		
	}
	

	
	
	// 주소 - 좌표 변환 + 마커 + 인포윈도우 생성
	function setMapPosition(cateL, category, className, nick, likeCnt, starAvg, classPrice, addr, classImg, idx){
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
		        markerInfo += '<div class="marker-class-category">' + cateL + ' > ' + category + '</div>'
		        markerInfo += '<div class="marker-class-name">' + className + '</div>';
		        markerInfo += '<div class="marker-class-creator">' + nick + '</div>';
		       // markerInfo += '<div class="marker-class-like">' + '♥ ' + likeCnt + ' + '</div>';
		        markerInfo += '<div class="marker-class-addr">' + addr + '</div>';
		       // markerInfo += '<div class="marker-class-point">' + '★★★★★' + starAvg + '</div>';
		        markerInfo += '<div class="marker-class-price">' + classPrice + '원</div>';
		        markerInfo += '</div>';
		        // 인포윈도우로 장소에 대한 설명 표시
		        var infowindow = new kakao.maps.InfoWindow({
		            content: markerInfo
		        });
		        
		        markers[idx] = marker; // 마커 담기
		        infoArr[idx] = infowindow; // 인포윈도우 배열에 담기
		        		        
		        kakao.maps.event.addListener(marker, 'click', function() {
		        	closeInfoWindow(); // 모든 인포윈도우 닫기
		        	infowindow.open(map, marker); // 마커 위에 현재 인포윈도우 표시
		        });

		    	// 지도 클릭 이벤트 - 인포윈도우 닫기
				kakao.maps.event.addListener(map, 'click', function (mouseEvent) {
					infowindow.close(); // 인포윈도우 닫기
				});	
		
		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		        
		    } //if
		});   
	
	} //setMapPosition
	
	
	// 모든 인포윈도우 닫는 함수
    function closeInfoWindow() {
    	for(var z=0; z<infoArr.length; z++){
			infoArr[z].close();
	    }
    }
	
	
	// 클래스목록 마우스오버 시 지도 중심 위치 이동시키기
	function moveCenter(addr){
		geocoder.addressSearch( addr , function(result, status) {
		    // 정상적으로 검색이 완료됐으면 
		     if (status === kakao.maps.services.Status.OK) {
		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		        map.setCenter(coords);
		     }
		});
	}
	
	
	// 클래스 목록 마우스오버 이벤트 - 해당 마커 중심 지도, 인포윈도우 열기
	$(document).on('mouseenter', '#placesList > li', function(){
		var li_idx = $(this).index();
		moveCenter($(this).children('.class-list-info').children('.class-addr').text()); // 지도 중심 이동시키기
		kakao.maps.event.trigger(markers[li_idx], 'click'); // 마커 클릭 이벤트 강제 실행 - 인포윈도우 열기
	});


});
	
	
</script>