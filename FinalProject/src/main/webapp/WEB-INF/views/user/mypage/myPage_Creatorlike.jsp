<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#likedCreatiorList{width:100%;height:auto;overflow:auto;}/*height:auto;*//*좋아요크리에이터 리스트 감싸고 있는 div*/
	#likedCreatiorListUl{width:100%;height:100%;overflow:auto;}
	#likedCreatiorListUl>li{width:100%;height:100%;}
	#likedCreatiorListUl>li>div{nth}
</style>

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