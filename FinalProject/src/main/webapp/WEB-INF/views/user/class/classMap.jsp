<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link href="css/user/classMap.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=033542c9317694f8d1bb2f13c3b67a2a"></script>


<article id="container">
	<div class="class-map-wrap">
		<section id="class-map-view">
		
			<section class="class-map-list">
				<div class="class-list1-top">
					<h3 class="text-h3">내 주변 클래스</h3>
				</div>
				<div class="class-list1">
					<ul>
						<li>
							<div class="class-list-thumb"></div>
							<div class="class-list-info">
								<p>클래스 제목입니다. 이것은 무슨 클래스~~ 클릭하세요.</p>
								<p>55,000</p>
							</div>
						</li>
						<li>
							<div class="class-list-thumb"></div>
							<div class="class-list-info">
								<p>클래스 제목입니다. 이것은 무슨 클래스~~ 클릭하세요.</p>
								<p>55,000</p>
							</div>
						</li>
						<li>
							<div class="class-list-thumb"></div>
							<div class="class-list-info">
								<p>클래스 제목입니다. 이것은 무슨 클래스~~ 클릭하세요.</p>
								<p>55,000</p>
							</div>
						</li>
					</ul>
				</div>
			</section>
			
		</section>
		
	</div>
</article>


<script>
	var container = document.getElementById('class-map-view'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
</script>