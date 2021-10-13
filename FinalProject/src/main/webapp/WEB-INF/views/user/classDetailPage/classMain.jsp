<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>





<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- 데이트피커 
<script type="text/javascript" src="<%=request.getContextPath()%>/css/user/classCalendar/jquery-ui.min.js"></script>-->  
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/user/classCalendar/jquery-ui.css">
<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.js" integrity="sha256-0YPKAwZP7Mp3ALMRVB2i8GXeEndvCq3eSl/WsAl1Ryk=" crossorigin="anonymous"></script> 





<style>

	div{margin:0;padding:0; box-sizing:border-box;}
	a:link, a:hover, a:visited{text-decoration:none; color:#333;}
	#Bcotainer{margin:0 auto; width:1200px; height:auto; display:flex;margin-top:50px;} /* 모든걸감싸는 큰박스*/
	
	#leftdiv{width:800px;margin:0;}
	
	#rightdiv{width:398px; position:relative;}
	
	#calssintro{width:100%;} /* 클래스대표사진 + 소개 컨테이너 */
	
	
	/*==================#leftdiv==================*/
	
	/* 클래스이미지 div */
	#d1{width:100%;height:430px;overflow:hidden;margin-bottom:10px;} /*높이,배경색 수정*/
	#d1>img{width:100%;height:100%;object-fit:cover;border-radius:12px;} /*object-fit:cover ? fill?  ;*/

	
	/* 클래스소개 div*/
	#d2{width:95%;overflow:auto;padding-bottom:10px;margin:0 auto;} 
	#d2>ul>li{padding-bottom:5px;} /* ===지울것===*/
	#d2 li:nth-child(1){margin-top:5px;font-weight:bold;color:#ff385c;} 
	#d2 li:nth-child(2){font-size:1.5rem; font-weight:bold;margin:5px 0 5px 0;}
	#d2 li:nth-child(3){font-size:1rem;padding-bottom:0px;white-space: pre-line;}
	
	#d2 li:nth-child(4)>div{width:100%;height:26px;overflow:auto;}
	#d2 li:nth-child(4)>div>div{float :left;}/*좋아요버튼+좋아요수*/	
	#d2 li:nth-child(4)>div>div:nth-child(1){width:88%; text-align:right; height:100%;} /*좋아요버튼 , 이미지*/
	#d2 li:nth-child(4)>div>div:nth-child(1)>img{width:24px;height:90%;}
	#d2 li:nth-child(4)>div>div:nth-child(2){width:7%; height:100%;color:#666;font-size:18px;padding-left:10px;} /*좋아요 수 */
	
	#d2 li:nth-child(5){width:100%;height:100%;color:#999;text-align:right;}
	
	#d2 li:nth-child(6){overflow:auto; border:1px solid red;} /*공유*/
	#d2 li:nth-child(6)>div{text-align:right;}
	
	/*강사이미지프로필 + 강사닉네임*/
	#d3{width:100%; height:105px; overflow:auto;border-bottom:1px solid #ddd;border-top:1px solid #ddd;}
	#d3>div{float:left;}
	#d3 div:nth-child(1){width:15%;height:100%; overflow:hidden; padding:2%;} /*overflow:hidden : 선택시 네모로 안보이겡*/
	#d3 div:nth-child(1)>img{width:100%;height:100%;border-radius:100%;object-fit:fill;}
	#d3 div:nth-child(2){width:80%;height:100%;padding-left:2%;}  /* height..흠*  -> 가운데로 정렬*/ 	
	#d3 div:nth-child(2) a:link,  a:visited{text-decoration:none; color:#333;}
	#d3 div:nth-child(2) a:hover{color:#ff385c;}
	#d3 div:nth-child(2)>*{display:block;width:100%;}
	#d3 div:nth-child(2)>a{font-size:1.2rem;padding-top:25px;font-weight:bold;}
	#d3 div:nth-child(2)>span{padding-top:5px;padding-left:1px;color:#666;font-size:0.9rem;}
	
	/* 메뉴바 */
	#d4{width:100%;height:auto;overflow:auto;position:sticky;top:78px;background-color:white;r}
	#d4>ul{width:100%;height:auto;overflow:auto;}
	#d4 li{float:left; width:20%;height:50px;line-height:50px; text-align:center;border-bottom:1px solid #ddd;}	
	
	/*클레스 상세페이지 메뉴*/
	.menu{width:100%; min-height:500px;height:100%; border-bottom:1px solid #ddd; overflow:auto;padding-bottom:30px;} /*min-height*/	
	.menutitle{height:70px;line-height:70px;font-size:1.2rem;font-weight:bold;}
	
	#d5>div:nth-child(1)>span{display:inline-block;box-shadow:inset -11px #ff385c;}
	#d5>div:nth-child(2){ white-space: pre-line;text-align:center;}/*클래스소개*/
	#d5>div:nth-child(2) img{width:100%;height:500px;object-fit:fill;margin:20px 0 20px 0;}
	
	#d6>div:nth-child(2){white-space: pre-line}
	#d6>div:nth-child(2)>img{max-width:100%;max-height:500px;margin:20px 0 20px 0;}
	
	#d7>div:nth-child(2){margin:10px 0 10px 0;}
	
	#d9{width:100%;height:auto;}
	#d9>div{width:100%;height:100%;}
	#d9_2{padding: 15px;} /*fff0f5 ffe4e4*/
	#d9>div:nth-child(2n+1){margin-bottom:20px;}/*제목div*/	
	
	#creatormemberoneask{width:100%;height:auto;overflow:auto;}
	#creatormemberoneask>li{width:100%;}
	#creatormemberoneask>li>div{width:100%;height:120px;margin-bottom:15px;}
	#creatormemberoneask>li>div>div{float:left;height:100%;}
	#creatormemberoneask>li>div>div:nth-child(2n+1){width:15%;height:100%;}
	#creatormemberoneask>li>div>div:nth-child(2n+1)>img{width:100%;height:100%;border-radius:100%;}
	#creatormemberoneask>li>div>div:nth-child(2n+2){width:85%;height:100%;}
	#creatormemberoneask>li>div>div:nth-child(2n+2)>div{width:100%;}	
	#creatormemberoneask>li>div>div>div{width:100%;height:auto;}
	#creatormemberoneask>li>div>div>div:nth-child(2){overflow:auto;}
	#creatormemberoneask>li>div>div>div:nth-child(1)>label{display:inline-block;margin:5px 0 20px 15px;font-size:0.9rem;color:#666;}
	#creatormemberoneask>li>div>div>div:nth-child(2)>label{display:inline-block;margin-left:15px;}
	
	#d9>div:nth-child(3){width:100%;height:100%;border:2px solid #ddd;margin:20px 0 20px 0;padding:10px 0 10px 0; }
	#d9>div:nth-child(3)>span{display:block;margin:0 0 10px 36px;font-size:0.9rem;color:#333;}
	#d9>div:nth-child(3)>form>div{text-align:center;}/*padding-left:26px;*/
	#classMainAskTa{width:90%;height:100px;resize:none;overflow:auto;border-color:#ddd;}/*댓글작성하는부분*/
	#d9>div:nth-child(3)>form>input[type=button]{margin: 10px 0 0 36px;background-color:white;border:none;border:1px solid #999;width:100px;padding-top:5px;padding-bottom:5px;}
	textarea::placeholder {color:#999;}
	
	.askdiv909{border:1px solid #f0f0f0;padding:10px;}/*회원배경:회색*/
	.askdiv808{background-color: #f0f0f0;padding:10px;}/*강사배경 : 연핑크 or 연하늘*/

	
	/*==================#rightDiv==================*/
	
	/*rightDiv*/
	#rightConBox{width:96%;margin-left:10px; min-height:600px;height:auto; box-shadow: 0 0 8px rgba(0,0,0,0.3);position:sticky;top:125px;border-radius: 10px;}
	#rightConBox div{margin:0 auto;}
	
	/*달력 width:350px;*/	
	#datepicker{padding-top:25px;}
	
	/*클래스옵션목록*/
	#selectClassListd{width:350px;min-height:120px;height:auto;border:1px solid #f0f0f0;overflow:auto;} 
	/*버튼감싸고 있는div*/
	#buttonhomec{width:350px;display:flex;height:auto;}
	#buttonhomec input[type=button]{border:none;}
	#gobasketB{width:119px;height:38px;font-size:18px;margin:10px 30px 15px 0;boder:1px solid #ddd;background-color:#616060;color:#fff;}
	#gopayB{width:200px;height:38px;font-size:18px;margin:10px 0 15px 0;boder:1px solid #ddd;background-color:#616060;color:#fff;}
	
</style>
<script>
	$(function(){		
		$('#d4 li').click(function(){	
			$(this).children('a').css('color','#ff385c'); //글자색
			$(this).css('border-bottom','3px solid #ff385c'); //li밑줄색 
			
			$('#d4 li').not(this).children('a').css('color','black'); //글자색
			$('#d4 li').not(this).css('border-bottom','2px solid #999');	//li밑줄색 
		});
				
			
	    $(function(){//달력
	         $('.datepicker').datepicker({
	        	 dateFormat: 'yy-mm-dd'
	        	 ,dayNamesMin: ['일','월','화','수','목','금','토']
	         	 ,minDate: "-0M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
	             ,maxDate: "+5M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)  
	        	
	         });
	         
	         $('.datepicker').datepicker('setDate', 'today');
	      })
		
	      $('#datepicker').on("change", function() { //날짜선택시 벌어지는일
	          //var date9999 = $(this).val();
	      	  //console.log(date9999);
	      	  $("#inputdatebox").html($(this).val());
	      });
	      
	   		
	});
	
	

</script>

<div id="Bcotainer">
	<!--  -->
	<div id="leftdiv">
		<div id="calssintro"> <!-- 클래스대표사진+소개글 , 강사프로필+강사닉네임 -->	
			<div id="d1"><img src="img/jisu/classimg.png"/></div> <!-- 클래스 이미지 -->
			<div id="d2"> <!-- 클래스 소개 -->
				<ul>
					<li>${vo.category_name }</li> <!-- 위치?대분류? --> <!-- 왼쪽정렬 -->
					<li>${vo.class_name }</li> <!-- 클래스 제목 -->
					<li>${vo.class_info }</li> <!-- 짧은 소개글 *******************pre-wrap 아직 미설정-->
					<li>
						<div>
							<div><img src="img/jisu/ff385bigborderheart.png"/></div><!--  좋아요버튼, 좋아요수 --> <!-- 왼쪽정렬 -->
							<div>120</div> <!--? 흠...div안에있는게 맞나모르겟음... -->
						</div>
					</li>
					<li><img src="img/jisu/smalllocation.png"/>경기도 | 용인시</li> <!-- 위치 -->
					<li style="display:none;"><div><input type="button" value="공유"/></div></li> <!-- 공유하기 -->
				</ul>
			</div> 
			<div id="d3"> <!-- 강사프로필 + 강사명 -->
				<div><img src="img/jisu/creatorprofile.png"/></div> <!-- 강사프로필이미지 -->	
				<div> <!-- 강사닉네임 -->	
					<a href="#">${vo.nick }</a>
					<span>클래스 3개 | 좋아요 19개</span>
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
					${vo.class_content }				
				</div>
				
			</div>
			<div id="d6" class="menu"> <!-- 강사소개 -->
				<div class="menutitle"><span>강사소개</span></div>
				<div>
					${vo.creator_content }
				</div>
			</div>
			<div id="d7" class="menu"> <!-- 위치 -->
				<div class="menutitle"><span>위치</span></div>
				<div>${vo.class_addr1 }</div>
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
							geocoder.addressSearch( '${vo.class_addr1 }', function(result, status) {
						
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
				<div id="d9_2"><!-- 댓글내용 -->
					<ul id="creatormemberoneask">
						<li> <!-- **문의댓글한줄 -->
							<div class="askdiv909"><!-- 이미지 + 닉네임 + 작성날짜-->
								<div><img src="img/jisu/basic.png"/></div> <!-- 이미지 -->
								<div>
									<div><label>an** | 2021년 6월 6일 20:26 작성</label></div>
									<div><label>이번주 토요일 클래스 예약 2명 가능할까요?</label></div>
								</div> 						
							</div>							
							
							 
							<!-- -------------------------------------------------- -->
							
							<div class="askdiv808" > <!-- 강사답댓글 -->
								<div style="display:flex;width:20%;"><label style="display:block;width:20%;height:100%;vertical-align:middle;font-size:2rem;color:#666;">↳</label><img src="img/jisu/creatorprofile.png" style="width:80%"/></div> <!-- 이미지 -->
								<div style="width:80%;">
									<div><label> 버드세이지 플라워 | 2021년 6월 7일 12:00 작성</label></div>
									<div><label>가능합니다 :)</label></div>
								</div> <!-- 아이디 -->		
							</div>							
						</li>
						
						
						<li> <!-- **문의댓글한줄 -->
							<div class="askdiv909"><!-- 이미지 + 닉네임 + 작성날짜-->
								<div><img src="img/jisu/dog.png"/></div> <!-- 이미지 -->
								<div>
									<div><label>tr2** | 2021년 6월 21일 12:41 작성</label></div>
									<div><label>23일 토요일 두명신청했는데 오후 4시쯤 방문해도 괜찮을까요?</label></div>
								</div> 							
							</div>							
							
							<div style="display:none;"> 
								
							</div><!-- 답댓글--> 
					  </li>
						
					</ul>					
				</div>
				<div><!-- 댓글작성 -->
					<span>문의 내용 작성</span>
					<form method="post" id="">
						<div><textarea name="classMainAskTa" id="classMainAskTa" placeholder="궁금하신 점 또는 클래스문의등을 자유롭게 작성해 주세요."></textarea></div>
						<input type="button" id="" value="작성완료"/>
						<input type="hidden" name="no" value="${vo.class_no }"/><!-- 클래스 번호 -->
					</form>
				</div>
			</div>
		</div>		
	</div>
	<div id="rightdiv">
			<div id="rightConBox">
				<div id="datestr" style="display:none;"><input type="text" value=""/></div><!-- 선택한날짜입력 -->
				
				<div id="calendardiv"><!-- 달력 -->					
					<div id="datepicker" class="datepicker"></div>
				</div>
				
				<div id="selectClassListd" style="margin-top:10px;"><!-- 해당날짜에 선택된 강의옵션목록 -->
				
				</div>
				
				<div id="buttonhomec"><input type="button" value="장바구니" id="gobasketB" style="border-radius:5px;"/><input type="button" value="클래스 신청하기" id="gopayB" style="border-radius:5px;"/></div>
				
				<div style="display:none" id="inputdatebox"></div><!-- 선택된날짜입력될박스 -->
				
			</div>
	</div>
</div>
