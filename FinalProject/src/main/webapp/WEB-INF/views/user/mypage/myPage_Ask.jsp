<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>	
	
	#askWhat{width:85%;margin:0 auto;text-align:center;display:flex;margin-top:60px;}
	#askWhat>li{width:50%;font-size:22px;padding-top:10px;padding-bottom:10px;}
	#askWhat>li:nth-child(1){background-color:#464646;color:white;}
	#askWhat>li:nth-child(2){background-color:#ddd;color:#464646;}
	
	/*클래스문의,홈페이지문의 자리div*/
	#askBigDiv{width:85%;height:auto;margin:0 auto;margin-top:30px;position:relative}/*border:1px solid black;*/
	.askDiv{width:100%;height:auto;}
	
	/*클래스문의내용*/
	#classAsk{position:relative;visibility:hidden;}
	#classAskcontent{width:100%;height:auto;}
	#classAskcontent>li{height:auto;margin-top:15px;margin-bottom:15px;padding-bottom:10px;border-bottom:1px solid #ddd;}
	#classAskcontent>li>*{display:block;width:100%;margin-bottom:5px;}
	#classAskcontent>li>a:nth-child(1){font-size:1.1rem;font-weight:bold;margin-bottom:12px;}/*문의한 클래스명*/
	#classAskcontent>li>span{font-size:0.8rem;color:#666;padding-left:5px;}/*답변여부,작성일자*/
	#classAskcontent>li>div:nth-child(1){width:100%;}
	#classAskcontent>li>div textarea{width:100%;height:auto;background-color:#ddd;font-size:14px;font-color:#333;border:none;resize:none;overflow:auto;padding:10px 0 10px 0px;margin:7px 0 7px 0;}/*문의내용*/
	.classAskcontentBtn a{background-color:#333;padding:3px 12px 3px 12px;font-size:0.8rem;}/*수정,삭제*/
	.classAskcontentBtn a:link{color:white;}
	.classAskcontentBtn a:visited{color:white;}
	.classAskcontentBtn a:hover{color:#ff385c;}
	.classAskcontentBtn a:nth-child(2){margin-left:20px;}
	
	.classAskcontenttextreplydiv{width:100%;height:auto;overflow:auto;background-color:#ddd;}/*답변*/
	.classAskcontenttextreplydiv>div{float:left;height:100px;}
	.classAskcontenttextreplydiv>div:nth-child(1){width:12%; padding:2%;}/*강사이미지*/
	.classAskcontenttextreplydiv>div:nth-child(1) img{width:100%;border-radius:100%;}
	.classAskcontenttextreplydiv>div:nth-child(2){width:88%;overflow:auto;}/*강사가 작성한 답변내용*//*auto?scroll세로?*/
	.classAskcontenttextreplydiv>div:nth-child(2)>span{display:block;margin-top:3px;}
	.classAskcontenttextreplydiv>div:nth-child(2)>span:nth-child(2){font-size:0.8rem;color:#666;}
	
	/*홈페이지문의내용*/
	#homepageAsk{position:absolute;visibility:hidden;}
	.homeAskcontent{width:100%;}
	.homeAskcontent>li{width:20%;float:left;border-bottom:1px solid #ddd;padding:10px 0 10px 0;text-align:center;}
	.homeAskcontent>.homeAskTli{border-bottom:2px solid #333;}
	.homeAskcontent>li:nth-child(4n+1){width:10%;}
	.homeAskcontent>li:nth-child(4n+2){width:60%;white-space:nowrap;overflow:hidden;text-overflow: ellipsis;}
	.homeAskcontent>li:nth-child(4n+3){width:15%;}
	.homeAskcontent>li:nth-child(4n+4){width:15%;}
	/*.classAskTbl{background-color:#ff385c;}*/
	
</style>
<script>
	$(function(){ //마우스오버시 클래스/홈페이지문의
	
	  $("#classAskT").on({
			
			click:function(){
				//마우스오버가 발생하면 실행할 실행문
				$(this).css('color','#ff385c');
				$("#classAsk").css("visibility","visible");
				
				$("#homepageAskT").css('color','#464646');
				$("#homepageAsk").css("visibility","hidden");
			
			}			
		});
	
	  $("#homepageAskT").on({
			
			click:function(){
				//마우스오버가 발생하면 실행할 실행문
				$(this).css('color','#ff385c');
				$("#homepageAsk").css("visibility","visible");
				
				$("#classAskT").css('color','white');
				$("#classAsk").css("visibility","hidden");
			
			}			
		});
	
	});
</script>

<%@ include file="myPageTop.jspf" %>

	<div class="bigTitle"><span class="h1style" >나의 문의</span></div>
	<ul id="askWhat"><li id="classAskT" class="atitlediv">클래스문의</li><li id="homepageAskT" class="atitlediv">홈페이지문의</li></ul>

	
	<div id="askBigDiv">
		
		<!-- 홈페이지문의  -->
		<div id="homepageAsk" class="askDiv">
			<ul class="homeAskcontent">
				<li class="homeAskTli">No.</li>
				<li class="homeAskTli">제목</li>
				<li class="homeAskTli">작성일자</li>
				<li class="homeAskTli">답변여부</li>
				
				<li >1</li>
				<li>결제시 에러메시지가 나오는경우 어떻게 해야하나요?</li>
				<li>2021-01-01</li>
				<li>답변완료</li>
				
				<li >2</li>
				<li>주문후 결제방법을 변경하고 싶은데 어떻게 해야 하나요?</li>
				<li>2021-01-01</li>
				<li>미답변</li>
			</ul>
		</div>
		
		
		<!--클래스문의 -->
		<div id="classAsk"class="askDiv">
			<ul id="classAskcontent">				
				
				<li>
					<a href="#">[도자기 공예]도자기 공예 기초 클래스</a><!-- 문의한 클래스명 -->
					<span>미답변</span><!-- 답변여부 -->
					<span>2021년01월01일 작성</span><!-- 작성일자 -->
					<div><!-- 문의내용 -->
						<textarea name="classAskcontenttext" readonly disabled >도자기 공예 경험이 아예 한번도 없는 사람도 본 수업을 들어도 잘 따라갈수 있을까요?또 수업에 필요한 준비물은 무엇인가요?</textarea>
					</div>
					<div class="classAskcontentBtn"><a href="#">수정</a><a href="#">삭제</a></div>
				</li>
				
				<li>
					<a href="#">[도자기 공예]도자기 공예 기초 클래스</a><!-- 문의한 클래스명 -->
					<span>답변완료</span><!-- 답변여부 -->
					<span>2021년01월01일 작성</span><!-- 작성일자 -->
					<div><!-- 문의내용 -->
						<textarea name="classAskcontenttext" readonly disabled >도자기 공예 경험이 아예 한번도 없는 사람도 본 수업을 들어도 잘 따라갈수 있을까요?또 수업에 필요한 준비물은 무엇인가요?</textarea>
					</div>
					
					<div style="display:none;"><a href="#">수정</a><a href="#">삭제</a></div><!-- 답변달리면 삭제수정불가? -->
					
					<div class="classAskcontenttextreplydiv"><!-- 문의답변 -->				
						<div><a href="#"><img src="../../img/profileimg.jpg"/></a></div>		
						<div>
							<span>도자마스터</span>
							<span>2021년01월02일 작성</span>							
							<textarea name="classAskcontenttextreply" readonly disabled >초보자도 따라하기 쉬운 강의입니다. 준비물은 수업시 제공해드립니다.</textarea>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>	

<%@ include file="myPageBottom.jspf" %>