<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
	#likedCreatiorList{width:100%;height:auto;overflow:auto;}/*height:auto;*//*좋아요크리에이터 리스트 감싸고 있는 div*/
	#likedCreatiorListUl{width:100%;height:100%;overflow:auto;}
	#likedCreatiorListUl>li{width:100%;height:100%;}
	#likedCreatiorListUl>li>div{nth}
</style>
</head>
<body>
<%@ include file="myPageTop.jspf" %>

	<div id="likedCreatior" class="bigTitle"><span class="h1style">♥ 크리에이터</span></div>
	
	<div id="likedCreatiorList">
		<ul id="likedCreatiorListUl">
			<li><!-- 강사1 -->
				
				<div></div> <!-- 이미지 -->
				<div></div> <!-- 설명 -->
				
			</li>
			
		</ul>
	</div>
	
	
<%@ include file="myPageBottom.jspf" %>