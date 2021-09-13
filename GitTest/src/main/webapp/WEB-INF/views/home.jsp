<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>웹 프로젝트 기능테스트</title>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script> <!-- 우편번호 -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> <!-- JQuery -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9551f210d2bfdcde36af42fb1ccab895"></script> <!-- KAKAOMAP API 키 주소기본설정 : localhost:9090-->
	<script src="//cdn.ckeditor.com/4.16.2/standard/ckeditor.js"></script><!-- ckEditor4 버전 -->
	<script>
		$(()=>{
			
			// 카카오맵 API 출력
			var container = document.getElementById('map');
			var options = {
				center: new kakao.maps.LatLng(33.450701, 126.570667),
				level: 3
			};
			var map = new kakao.maps.Map(container, options);
			var mapTypeControl = new kakao.maps.MapTypeControl();
			map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);
			var zoomControl = new kakao.maps.ZoomControl();
			map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
			
			// 우편번호 API 출력
			$('#test').click(function(){
				new daum.Postcode({
			        oncomplete: function(data) {
			        	var addr = data.address;
			            // https://postcode.map.daum.net/guide
			        	var roadAddr = data.roadAddress; // 도로명 주소
							document.getElementById('post').innerHTML =roadAddr;
							
						var zoneCode = data.zonecode; // 우편번호
						    document.getElementById('post2').innerHTML =zoneCode;
			        }
			    }).open();	
			});
			
			//CK 에디터
			CKEDITOR.replace("content",{filebrowserUploadUrl:'파일업로드 설정해줄 *.do'});
		});
	</script>
	
	<style>
		body{
			margin: 0;
			padding: 0;
			height:630px;
		}
		.textEdit, .ckEdit5, .kakaoMap, .ckEdit4{
			float:left;
			width:500px;
			margin-left: 10px;
			padding:5px;
			border: 1px solid blue;
		}
		#map,#postDiv{
			border: 1px solid black;
		}
		
		#htmlEdit{
			border: 1px solid black;
			height: 400px;
		}
	</style>
</head>
<body>
	<div class="kakaoMap">
		<h2>카카오 API</h2><br/>
		<div id="map" style="width:500px;height:400px;"></div>
		<div id="postDiv"style="width:500px;height:100px;">
			도로명주소:<label id ="post"></label><br/>
			우편번호:<label id ="post2"></label>
		</div>
		<button id="test">우편번호 테스트</button>
	</div>
<!-- 	<div class="textEdit" >
		<h2>HTML contentEditable</h2><br/>
		<div id="htmlEdit" contentEditable="true">
			테스트중
		</div>
	</div> -->
	<!-- <div class="ckEdit5">
		<h2>CK 에디터 버전5 - 테스트</h2><br/>
		<div>
			<textarea name="content5" id="content5"></textarea>
			<script src="https://cdn.ckeditor.com/ckeditor5/29.2.0/classic/ckeditor.js"></script> ckEditor5 최신버전
			<script>
				ClassicEditor
				.create(document.querySelector('#content5'))
				.catch(error=>{ console.error(error);});
			</script>
		</div>
	</div> -->
	<div class="ckEdit4">
		<h2>CK 에디터 버전4 - 테스트</h2><br/>
		<div>
			<input type="text" name="content" id="content">
		</div>
	</div>	
</body>
</html>