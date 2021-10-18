<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>	
	
	#askWhat{width:85%;margin:0 auto;text-align:center;display:flex;margin-top:60px;}
	#askWhat>li{width:50%;font-size:22px;padding-top:10px;padding-bottom:10px;}
	#askWhat>li:nth-child(1){background-color:#464646;color:white;}
	#askWhat>li:nth-child(2){background-color:#f0f0f0;color:#464646;}
	
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
	#classAskcontent>li>div textarea{width:100%;height:auto;background-color:#f0f0f0;font-size:14px;font-color:#333;border:none;resize:none;overflow:auto;padding:10px 0 10px 0px;margin:7px 0 7px 0;}/*문의내용*/
	.classAskcontentBtn a{background-color:#333;padding:3px 12px 3px 12px;font-size:0.8rem;}/*수정,삭제*/
	.classAskcontentBtn a:link{color:white;}
	.classAskcontentBtn a:visited{color:white;}
	.classAskcontentBtn a:hover{color:#ff385c;}
	.classAskcontentBtn a:nth-child(2){margin-left:20px;}
	
	.classAskcontenttextreplydiv{width:100%;height:auto;overflow:auto;background-color:#f0f0f0;}/*답변*/
	.classAskcontenttextreplydiv>div{float:left;min-height:100px;height:auto;word-break:break-all}
	.classAskcontenttextreplydiv>div:nth-child(1){width:12%; padding:2%;}/*강사이미지*/
	.classAskcontenttextreplydiv>div:nth-child(1) img{width:100%;border-radius:100%;}
	.classAskcontenttextreplydiv>div:nth-child(2){width:88%;overflow:auto;}/*강사가 작성한 답변내용*//*auto?scroll세로?*/
	.classAskcontenttextreplydiv>div:nth-child(2)>span{display:block;margin-top:3px;}
	.classAskcontenttextreplydiv>div:nth-child(2)>span:nth-child(2){font-size:0.8rem;color:#666;}
	
	/*홈페이지문의내용*/
	#homepageAsk{position:absolute;visibility:hidden;}
	.homeAskcontent{width:100%;}
	.homeAskcontent>li{width:20%;float:left;border-bottom:1px solid #ddd;height:50px;padding:10px 0 10px 0;text-align:center;}
	.homeAskcontent>.homeAskTli{border-bottom:2px solid #999;}
	/*.homeAskcontent>li:nth-child(4n+1){width:10%;}
	.homeAskcontent>li:nth-child(4n+2){width:60%;white-space:nowrap;overflow:hidden;text-overflow: ellipsis;}
	.homeAskcontent>li:nth-child(4n+3){width:15%;}
	.homeAskcontent>li:nth-child(4n+4){width:15%;}
	/*.classAskTbl{background-color:#ff385c;}*/
	
</style>
<script>
	$(function(){ 
		var logid = "${userId}"; // 세션에저장된아이디		
		
	  $("#classAskT").on({			
			click:function(){				
				getClassAsk();
				//마우스오버가 발생하면 실행할 실행문
				$(this).css('color','#ff385c');
				$("#classAsk").css("visibility","visible");				
				$("#homepageAskT").css('color','#464646');
				$("#homepageAsk").css("visibility","hidden");			
			}			
		});
	
	  $("#homepageAskT").on({			
			click:function(){				
				getHomeAsk();//홈페이지리스트가져오는 함수문					
				//마우스오버가 발생하면 실행할 실행문
				$(this).css('color','#ff385c');
				$("#homepageAsk").css("visibility","visible");				
				$("#classAskT").css('color','white');
				$("#classAsk").css("visibility","hidden");					
			}			
		});

		//세션아이디기 가지고 회원이 작성한 홈페이지문의 목록 가져오기
		function getHomeAsk(){
			var hUrl ="/another/HomeAskReplyList999";
			var hParam = {"logid":logid} //세션에 저장된 로그인한 회원아이디	    	
			$.ajax({
				url:hUrl,
				data :hParam,
				success:function(h){//hParam가지고 hUrl로 이동해서 h에 데이터가져옴
					var hh = $(h)
	    			var tag =""; 	
						tag +="<li class='homeAskTli' style='width:10%;background-color:#f0f0f0;'>No.</li>";
						tag +="<li class='homeAskTli' style='width:60%;white-space:nowrap;overflow:hidden;text-overflow: ellipsis;background-color:#f0f0f0;'>제목</li>";
						tag +="<li class='homeAskTli' style='width:15%;background-color:#f0f0f0;'>작성일자</li>";
						tag +="<li class='homeAskTli'  style='width:15%;background-color:#f0f0f0;'>답변여부</li>";
					hh.each(function(idx,vo){						
						tag +="<li style='width:10%;padding-top:17px;'>"+vo.user_qna_no+"</li>";	
						tag +="<li style='width:60%;white-space:nowrap;overflow:hidden;text-overflow: ellipsis;'>"+vo.title+"</li>";
						tag +="<li style='width:15%;padding-top:17px;'>"+vo.writedate+"</li>";
						if(vo.replycount == 1){
							tag +="<li style='width:15%;'>미답변</li>";
						}else{
							tag +="<li style='width:15%;'>답변완료</li>";
						}
						tag+="<li  class='conconli' style='width:100%;min-height:100px;height:auto;background-color:#f0f0f0;display:none;'>";//id값,안보이게........
						tag +="<div  style='width:100%;word-break:break-all;padding-left:62px;text-align:left;'>"+vo.content+"</div>";// ->토글로
						tag +="</li>"
						if(vo.replycount ==2){
								//답글
							tag+="<li  class='reprepli' style='width:100%;min-height:100px;height:auto;display:none;'>";
							tag +="<div  style='width:100%;word-break:break-all;padding-left:62px;text-align:left;'>"+vo.replyContent+"</div>";
							tag +="</li>"
						}
						//tag +="<li>"
						//<div><input type="button" value="수정"><input type="button" value="삭제"></div> -> 누르면이동
						//tag +="</li>"
						$("#homeAskcontent").html(tag);  
					});	
				}
			})
	  }
		//세션아이디기 가지고 회원이 작성한 클래스문의 목록 가져오기
	function getClassAsk(){
			var cUrl ="/another/ClassAskReplyList999";
			var cParam = {"logid":logid}
			$.ajax({
				url:cUrl,
				data : cParam,
				success:function(c){
					var cc = $(c)
	    			var tag =""; 	
					cc.each(function(idx,vo){//vo -> 
					console.log("클래스문의가져옴");
						tag += "<li>";
						tag +="<a href='#'>[ "+vo.category_name +" ] "+vo.class_name+"</a>";
						//var a = vo.class_no
						//console.log(a);
						if(vo.replycheck == 0){
							tag +="<span>미답변</span>";
						}else{
							tag +="<span>답변완료</span>";
						}
						
						tag +="<span>"+vo.classqna_writedate+" 작성</span>";
						tag +="<div>";
						tag += "<textarea  style='padding-left:25px;' name='classAskcontenttext' readonly disabled >"+vo.classqna_content+"</textarea>";
						tag +="</div>";
						
						if(vo.replycheck == 0){
							tag +="<div'><a href='#'>수정</a><a href='#'>삭제</a></div>"
						}else{
							tag +="<div><a href='#'>삭제</a></div>"; //style='display:none;'
						}
						
						if(vo.replycheck == 1){
							tag +="<div class='classAskcontenttextreplydiv'>";
							tag +="<div><a href='#'><img src='img/jisu/profileimg.jpg'/></a></div>";//vo.creator_img
							tag +="<div>";
							tag +="<span>"+vo.creator_nick+"</span>";
							tag +="<span>"+vo.classqnacom_writedate+"</span>";
							tag+="<textarea name='classAskcontenttextreply' readonly disabled >"+vo.creator_reply+"</textarea>";
							tag+="</div>";
							tag+="</div>";
							tag+="</li>";
						}
						$("#classAskcontent").html(tag);  
					});						
				}				
			})
		}	
		
		
		
		//$().click(function()=>{
			
		//});
	});
</script>

<%@ include file="myPageTop.jspf" %>

	<div class="bigTitle"><span class="h1style" >나의 문의</span></div>
	<ul id="askWhat"><li id="classAskT" class="atitlediv">클래스문의</li><li id="homepageAskT" class="atitlediv">홈페이지문의</li></ul>	
	<div id="askBigDiv">		
		<!-- 홈페이지문의  -->
		<div id="homepageAsk" class="askDiv">
			<ul class="homeAskcontent" id="homeAskcontent">
			</ul>
		</div>		
		<!--클래스문의 -->
		<div id="classAsk"class="askDiv">
			<ul id="classAskcontent">					
				
		
			</ul>
		</div>
	</div>	

<%@ include file="myPageBottom.jspf" %>