<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#likedCreatiorList{width:80%;height:auto;overflow:auto;margin:0 auto;}/*height:auto;*//*좋아요크리에이터 리스트 감싸고 있는 div*/
	#likedCreatiorListUl{width:100%;height:100%;overflow:auto;}
	#likedCreatiorListUl>li{width:90%;height:160px;position:flex;border-bottom:1px dotted #ddd;padding:20px 20px 20px 20px;margin:0 auto;}
	#likedCreatiorListUl>li>div{float:left;}
	#likedCreatiorListUl>li>div:nth-child(1){width:20%;height:100%;padding: 5px;}
	#likedCreatiorListUl>li>div:nth-child(1)>img{width:100%;height:100%;border-radius:100%;}
	#likedCreatiorListUl>li>div:nth-child(2){width:80%;height:100%;}
	#likedCreatiorListUl>li>div:nth-child(2)>div:nth-child(1){width:100%;font-size:1.2rem;margin-top: 28px;margin-bottom:5px;}
	#likedCreatiorListUl>li>div:nth-child(2)>div:nth-child(1)>a:link,  a:visited{text-decoration:none; color:#333;}
	#likedCreatiorListUl>li>div:nth-child(2)>div:nth-child(1)>a:hover{color:#ff385c;}
	#likedCreatiorListUl>li>div:nth-child(2)>div:nth-child(1)>a>label{margin-left:15px;margin-botton:10px;}
	#likedCreatiorListUl>li>div:nth-child(2)>div:nth-child(2){width:100%;color:#666;}
	#likedCreatiorListUl>li>div:nth-child(2)>div:nth-child(2)>label{margin-left:15px;margin-botton:10px;}
</style>

<%@ include file="myPageTop.jspf" %>

	<div id="likedCreatior" class="bigTitle"><span class="h1style">♥ 크리에이터</span></div>
	
	<div id="likedCreatiorList">
		<ul id="likedCreatiorListUl">
			<li><!-- 강사1 -->
				
				<div><img src="img/jisu/flower5.png"/></div> <!-- 이미지 -->
				<div>
					<div><a href="#"><label>버드세이지플라워</label></a></div><!-- 강사명 -->
					<div><label>클래스 3개 | 좋아요 19개</label></div><!-- 클래스n개 좋아요 n개 -->
				</div> <!-- 설명 -->
				
			</li>
			
			<li><!-- 강사2 -->
				
				<div><img src="img/jisu/flower5.png"/></div> <!-- 이미지 -->
				<div>
					<div><a href="#"><label>버드세이지플라워</label></a></div><!-- 강사명 -->
					<div><label>클래스 3개 | 좋아요 19개</label></div><!-- 클래스n개 좋아요 n개 -->
				</div> <!-- 설명 -->
				
			</li>
			
		</ul>
	</div>
	
	
<%@ include file="myPageBottom.jspf" %>