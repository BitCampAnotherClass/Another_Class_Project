<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>


<!-- 데이트피커 : flatpickr -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>

</head>
<style>
	div{margin:0;padding:0; box-sizing:border-box;}
	a:link, a:hover, a:visited{text-decoration:none; color:black;}
	#Bcotainer{margin:0 auto; width:1200px; height:auto; display:flex;} /* 모든걸감싸는 큰박스*/
	
	#leftdiv{width:800px;margin:0;}
	
	#rightdiv{width:398px; position:relative;}
	
	#calssintro{width:100%;} /* 클래스대표사진 + 소개 컨테이너 */
	
	
	/*==================#leftdiv==================*/
	
	/* 클래스이미지 div */
	#d1{width:100%;height:430px;overflow:hidden;margin-bottom:10px;} /*높이,배경색 수정*/
	#d1>img{width:100%;height:100%;object-fit:cover;border-radius:12px;} /*object-fit:cover ? fill?  ;*/
	ul,li{margin:0;padding:0;list-style-type:none;}
	
	/* 클래스소개 div*/
	#d2{width:95%;overflow:auto;padding-bottom:10px;margin:0 auto;} 
	#d2>ul>li{padding-bottom:5px;} /* ===지울것===*/
	#d2 li:nth-child(1){margin-top:5px;font-weight:bold;color:#ff385c;} 
	#d2 li:nth-child(2){font-size:1.5rem; font-weight:bold;margin:5px 0 5px 0;}
	#d2 li:nth-child(3){font-size:1rem;padding-bottom:0px;white-space: pre-line;}
	
	#d2 li:nth-child(4)>div{width:100%;height:26px;overflow:auto;}
	#d2 li:nth-child(4)>div>div{float :left;}/*좋아요버튼+좋아요수*/	
	#d2 li:nth-child(4)>div>div:nth-child(1){width:93%; text-align:right; height:100%;} /*좋아요버튼 , 이미지*/
	#d2 li:nth-child(4)>div>div:nth-child(1)>img{width:24px;height:100%;}
	#d2 li:nth-child(4)>div>div:nth-child(2){width:7%; height:100%;color:#666;font-size:18px;padding-left:4px;} /*좋아요 수 */
	
	#d2 li:nth-child(5){width:100%;height:100%;color:#999;text-align:right;}
	
	#d2 li:nth-child(6){overflow:auto; border:1px solid red;} /*공유*/
	#d2 li:nth-child(6)>div{text-align:right;}
	
	/*강사이미지프로필 + 강사닉네임*/
	#d3{width:100%; height:105px; overflow:auto;border-bottom:1px solid #ddd;border-top:1px solid #ddd;}
	#d3>div{float:left;}
	#d3 div:nth-child(1){width:15%;height:100%; overflow:hidden; padding:2%;} /*overflow:hidden : 선택시 네모로 안보이겡*/
	#d3 div:nth-child(1)>img{width:100%;height:100%;border-radius:100%;object-fit:fill;}
	#d3 div:nth-child(2){width:80%;height:100%;padding-left:2%;}  /* height..흠*  -> 가운데로 정렬*/ 	
	#d3 div:nth-child(2) :a:link,  a:visited{text-decoration:none; color:#333;}
	#d3 div:nth-child(2) a:hover{color:#ff385c;}
	#d3 div:nth-child(2)>*{display:block;width:100%;}
	#d3 div:nth-child(2)>a{font-size:1.2rem;padding-top:25px;font-weight:bold;}
	#d3 div:nth-child(2)>span{padding-top:5px;padding-left:1px;color:#666;font-size:0.9rem;}
	
	/* 메뉴바 */
	#d4{width:100%;overflow:auto;}
	#d4 li{float:left; width:20%; text-align:center; padding-top:2%; padding-bottom:1%; border-bottom:2px solid #999;}	
	
	/*클레스 상세페이지 메뉴*/
	.menu{width:100%; min-height:500px;height:100%; border-bottom:1px solid #ddd; overflow:auto;padding-bottom:30px;} /*min-height*/	
	.menutitle{height:70px;line-height:70px;font-size:1.2rem;font-weight:bold;}
	
	#d5>div:nth-child(1)>span{display:inline-block;box-shadow:inset -11px #ff385c;}
	#d5>div:nth-child(2){ white-space: pre-line;text-align:center;}/*클래스소개*/
	#d5>div:nth-child(2)>img{width:100%;height:500px;object-fit:fill;margin:20px 0 20px 0;}
	
	#d6>div:nth-child(2){white-space: pre-line}
	#d6>div:nth-child(2)>img{max-width:100%;max-height:500px;margin:20px 0 20px 0;}
	
	#d9{width:100%;height:auto;}
	#d9>div{width:100%;height:100%;}
	/* #d9>div *{height:100%;} */
	#d9>div:nth-child(2n+1){margin-bottom:20px;}/*제목div*/
	#d9>div:nth-child(2)>ul>li>div:nth-child(2n+1){width:100%;height:120px;}
	#d9>div:nth-child(2) span{display:block;width:100%;height:100%;}/*댓글내용*/
	/*#d9>div:nth-child(2)>ul>li>div:nth-child(1){}/*이미지+닉네임+작성날짜*/
	#d9>div:nth-child(2)>ul>li>div:nth-child(2n+1)>span{float:left;position:flex;}
	#d9>div:nth-child(2)>ul>li>div>span:nth-child(2n+1){width:15%;}
	
	#d9>div:nth-child(2) span:nth-child(1)>img{width:100%;height:95%;object-fit:fill;border-radius:100%;}
	#d9>div:nth-child(2)>ul>li{margin-bottom:30px;}
	#d9>div:nth-child(2)>ul>li>div>span:nth-child(2n+2){width:85%;}
	#d9>div:nth-child(2)>ul>li>div>span:nth-child(2n+2)>label{display:block;padding-top: 77px;padding-left: 18px;font-size: 0.9rem;color: #666;}
	#d9>div:nth-child(2)>ul>li>span{width:100%;height:100%;white-space: pre-line;margin:10px 0 10px 0;}/*댓글내용*/
	/*#d9>div:nth-child(2)>ul>li>div:nth-child(2){width:100%;height:100%;white-space: pre-line;background-color:#ddd;display:flex;float:left;}/*답댓글*/
	
	#d9>div:nth-child(3){width:100%;height:100%;border:2px solid #ddd;margin:20px 0 20px 0;padding:10px 0 10px 0; }
	#d9>div:nth-child(3)>span{display:block;margin:0 0 10px 36px;font-size:0.9rem;color:#333;}
	#d9>div:nth-child(3)>form>div{text-align:center;}/*padding-left:26px;*/
	#classMainAskTa{width:90%;height:100px;resize:none;overflow:auto;border-color:#ddd;}/*댓글작성하는부분*/
	#d9>div:nth-child(3)>form>input[type=button]{margin: 10px 0 0 36px;background-color:white;border:none;border:1px solid #999;width:100px;padding-top:5px;padding-bottom:5px;}
	textarea::placeholder {color:#999;}


	
	/*==================#rightDiv==================*/
	
	/*rightDiv*/
	#calendardiv{width:100%; height:600px; border:2px solid #ff385c;position:sticky;top:100px;}
	
	/*달력*/
	.dateSelector{width:98%; display:block;}	/* display:none */
	.flatpickr-calendar animate inline{width:98%;}
</style>
<script>
	$(function(){		
		$('#d4 li').click(function(){	
			$(this).children('a').css('color','#ff385c'); //글자색
			$(this).css('border-bottom','3px solid #ff385c'); //li밑줄색 
			
			$('#d4 li').not(this).children('a').css('color','black'); //글자색
			$('#d4 li').not(this).css('border-bottom','2px solid #999');	//li밑줄색 
		});
				
			
		//달력		
		$(".dateSelector").flatpickr({
			inline : true,
			mode: "multiple",
			dateFormat: "Y-m-d",
			minDate:"today",
			maxDate: new Date().fp_incr(180)
			});		
	});
	
	

</script>
<body>
<div id="Bcotainer">
	<!--  -->
	<div id="leftdiv">
		<div id="calssintro"> <!-- 클래스대표사진+소개글 , 강사프로필+강사닉네임 -->	
			<div id="d1"><img src="../../img/classimg.png"/></div> <!-- 클래스 이미지 -->
			<div id="d2"> <!-- 클래스 소개 -->
				<ul>
					<li>플라워·가드닝</li> <!-- 위치?대분류? --> <!-- 왼쪽정렬 -->
					<li>꽃꽃이 및 테라리움 레슨 서비스</li> <!-- 클래스 제목 -->
					<li>꽃처럼 마음도 예뻐지는 꽃꽃이 클래스</li> <!-- 짧은 소개글 *******************pre-wrap 아직 미설정-->
					<li>
						<div>
							<div><img src="../../img/jisu/ff385bigborderheart.png"/></div><!--  좋아요버튼, 좋아요수 --> <!-- 왼쪽정렬 -->
							<div>120</div> <!--? 흠...div안에있는게 맞나모르겟음... -->
						</div>
					</li>
					<li><img src="../../img/jisu/smalllocation.png"/>경기도 | 용인시</li> <!-- 위치 -->
					<li style="display:none;"><div><input type="button" value="공유"/></div></li> <!-- 공유하기 -->
				</ul>
			</div> 
			<div id="d3"> <!-- 강사프로필 + 강사명 -->
				<div><img src="../../img/jisu/creatorprofile.png"/></div> <!-- 강사프로필이미지 -->	
				<div> <!-- 강사닉네임 -->	
					<a href="#">버드세이지 플라워</a>
					<span>클래스3개 | 좋아요19개</span>
				</div>
			</div>
			<div id="d4"> <!-- 메뉴 -->					
				<ul class="menu_title_container">
					<li id="classcontent"><a href="#d5">클래스소개</a></li>
					<li id="creatorcontent"><a href="#d6">강사소개</a></li>
					<li id="classaddr"><a href="#d7">위치</a></li>
					<li id="review"><a href="#d8">후기</a></li>
					<li id="classqna"><a href="#d9">문의</a></li>
				</ul>
			</div>
			
			<div id="d5" class="menu"> <!-- 클래스소개 -->
				<div class="menutitle"><span>클래스소개</span></div>
				<div>		
					<img src="../../img/jisu/flower2.png"/>			
					플라워 클래스 공간을 새롭게 리뉴얼한 버드세이지 플라워!
					한강진역 3번출구에서 도보로 5분이면 도착가능합니다.
					자연광도 예쁘게 들어오고 좁고 답답한 플라워샵이나 오피스텔에서 진행하지 않고
					널찍하고 세련된 인테리어로 	인생샷을 찍을 수 있는 트렌드바이미입니다.					
					<img src="../../img/jisu/flower3.png"/>							
					꽃꽂이 원데이 클래스,
					기초부터 차근차근 알려드립니다 :)
					선물하기에도 좋은 센터피스					
					<img src="../../img/jisu/flower4.png"/>						
					가장 대표적이며 기본적인 클래스라고 할수있는	'센터피스'입니다.
					꽃줄기를 사선으로 자른뒤 화기 안의 플로럴폼(오아시스)에 꽂아서 완성하시게 됩니다.
					고급스러운 화기가 함께 제공되며 집들이 선물, 첫인사 꽃으로 많이 신청하신답니다.					
				</div>
				
			</div>
			<div id="d6" class="menu"> <!-- 강사소개 -->
				<div class="menutitle"><span>강사소개</span></div>
				<div>
					<img src="../../img/flower5.png"/>
					안녕하세요. 감각적인 플라워상품과 클래스를 제공하는 버드세이지 플라워입니다.										
					
					저는 5년차 플로리스트로 원데이, 기초반부터 자격증, 창업반까지 
					
					다양한 플라워클래스를 온,오프라인으로 진행하고 있어요:-)
				</div>
			</div>
			<div id="d7" class="menu"> <!-- 위치 -->
				<div class="menutitle"><span>위치</span></div>
				<div>광주광역시 북구 천지인로115번길 10</div>
				<div style="width:100%;height:100%;">
					<div id="map" style="width:90%;height:400px;"></div>
					<!--
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=af2fbed4f8b6d0f0e4535ecf4e023244"></script><!-- 카카오지도api 
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=LIBRARY"></script>
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
					 -->
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=af2fbed4f8b6d0f0e4535ecf4e023244&libraries=services"></script> 
					<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=af2fbed4f8b6d0f0e4535ecf4e023244"></script>


					<script>
							var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
							var options = { //지도를 생성할 때 필요한 기본 옵션
								center: new kakao.maps.LatLng(33.450701, 126.570667), //지도의 중심좌표.
								level: 4 //지도의 레벨(확대, 축소 정도)
							};
							var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴	
							var geocoder = new kakao.maps.services.Geocoder();// 주소-좌표 변환 객체를 생성합니다
							
							// 주소로 좌표를 검색합니다
							geocoder.addressSearch('광주광역시 북구 천지인로115번길 10', function(result, status) {
						
							    // 정상적으로 검색이 완료됐으면 
							     if (status === kakao.maps.services.Status.OK) {
						
							        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
						
							        // 결과값으로 받은 위치를 마커로 표시합니다
							        var marker = new kakao.maps.Marker({
							            map: map,
							            position: coords
							        });
						
							        // 인포윈도우로 장소에 대한 설명을 표시합니다
							        var infowindow = new kakao.maps.InfoWindow({
							            content: '<div style="width:150px;text-align:center;padding:6px 0;">버드세이지 플라워</div>'
							        });
							        infowindow.open(map, marker);
						
							        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
							        map.setCenter(coords);
							    } 
							});  	
					</script>
				</div>
			</div>
			<div id="d8" class="menu"> <!-- 후기 -->
				<div class="menutitle"><span>후기</span></div>
			</div>
			
			<div id="d9" class="menu"> <!-- 문의 -->
				<div class="menutitle"><span>문의</span></div>
				<div><!-- 댓글내용 -->
					<ul>
						<li> <!-- **문의댓글한줄 -->
							<div><!-- 이미지 + 닉네임 + 작성날짜-->
								<span><img src="../../img/jisu/basic.png"/></span> <!-- 이미지 -->
								<span><label>an** | 2021년 6월 6일 20:26 작성</label></span> <!-- 아이디 -->								
							</div>							
							<span>이번주 토요일 클래스 예약 2명 가능할까요?</span><!-- 내용 -->
							 
							<!-- -------------------------------------------------- -->
							
							<div> <!-- 강사답댓글 -->
								<span><img src="../../img/jisu/creatorprofile.png"/></span> <!-- 이미지 -->
								<span><label> 버드세이지 플라워 | 2021년 6월 7일 12:00 작성</label></span> <!-- 아이디 -->		
							</div>
							<span>가능합니다 :)</span><!-- 내용 -->
							
						</li>
						
						<li> <!-- **문의댓글한줄 -->
							<div><!-- 이미지 + 닉네임 + 작성날짜-->
								<span><img src="../../img/jisu/dog.png"/></span> <!-- 이미지 -->
								<span><label>tr2** | 2021년 6월 21일 12:41 작성</label></span> <!-- 아이디 -->								
							</div>							
							<span>23일 토요일 두명신청했는데 오후 4시쯤 방문해도 괜찮을까요?</span><!-- 내용 -->
							<div style="display:none;"> 
								000
							</div><!-- 답댓글 -->
						</li>
						
					</ul>					
				</div>
				<div><!-- 댓글작성 -->
					<span>문의 내용 작성</span>
					<form method="post" id="">
						<div><textarea name="classMainAskTa" id="classMainAskTa" placeholder="궁금하신 점 또는 클래스문의등을 자유롭게 작성해 주세요."></textarea></div>
						<input type="button" id="" value="작성완료"/>
						<input type="hidden" name="no" value="${vo.no}"/><!-- 클래스 번호 -->
					</form>
				</div>
			</div>
		</div>		
	</div>
	<div id="rightdiv">
			<div id="calendardiv">
				<div><!-- 달력 -->
					<input class="dateSelector"/>
				
				</div>
			</div>
	</div>
</div>
</body>
</html>