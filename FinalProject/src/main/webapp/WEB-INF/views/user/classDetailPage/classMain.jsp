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
	
	#d9{width:100%;}
	#d9>button{display:block;width:100%;height:100px;line-heigh:100px;background-color:white;border:1px solid #ff385c;border-radious:12px;}
	#d9 a:hover{color:#ff385c;}
	
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
							<div><img src="../../img/ff385bigborderheart.png"/></div><!--  좋아요버튼, 좋아요수 --> <!-- 왼쪽정렬 -->
							<div>120</div> <!--? 흠...div안에있는게 맞나모르겟음... -->
						</div>
					</li>
					<li><img src="../../img/smalllocation.png"/>경기도 | 용인시</li> <!-- 위치 -->
					<li style="display:none;"><div><input type="button" value="공유"/></div></li> <!-- 공유하기 -->
				</ul>
			</div> 
			<div id="d3"> <!-- 강사프로필 + 강사명 -->
				<div><img src="../../img/creatorprofile.png"/></div> <!-- 강사프로필이미지 -->	
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
					<img src="../../img/flower2.png"/>			
					플라워 클래스 공간을 새롭게 리뉴얼한 버드세이지 플라워!
					한강진역 3번출구에서 도보로 5분이면 도착가능합니다.
					자연광도 예쁘게 들어오고 좁고 답답한 플라워샵이나 오피스텔에서 진행하지 않고
					널찍하고 세련된 인테리어로 	인생샷을 찍을 수 있는 트렌드바이미입니다.					
					<img src="../../img/flower3.png"/>							
					꽃꽂이 원데이 클래스,
					기초부터 차근차근 알려드립니다 :)
					선물하기에도 좋은 센터피스					
					<img src="../../img/flower4.png"/>						
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
			</div>
			<div id="d8" class="menu"> <!-- 후기 -->
				<div class="menutitle"><span>후기</span></div>
			</div>
			<div id="d9" class="menu"> <!-- 문의 -->
				<div class="menutitle"><span>문의</span></div>
				<div>
				
				</div>
				<button><a href="#">문의하기</a></button>
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