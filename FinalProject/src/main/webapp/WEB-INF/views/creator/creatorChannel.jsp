<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>

<style>
	#myChannelMainDiv{
		background-color:pink; height:1000px; width:950px; margin:0 auto;
	}
	.margin-left50px{
		margin-left:50px;
	}
	#myChannelMainDiv>h1{
		color:gray;
	}
	#myChannelMainDiv>div:nth-child(3){
		background-color:lightblue; width:950px; height:240px;
	}
	#creatorChannelPicSq{
		width:200px; height:240px; border:1px solid gray;  float:left;
	}
	#creatorChannelName{
		background-color:gray; width:400px; height:55px; float:left; margin-top:185px; 
		margin-left:30px; color:yellow; font-size:1.3em; text-align:left; line-height:60px;
	}
	#myChannelMainDiv>div:nth-child(5){
		background-color:lightblue; width:950px; height:35px;
	}
	#selectMenu>input{
	 float:left; width:33.3%; text-align:center; font-size: 1.3em;
	}

</style>
<script>
	
</script>
<div id="myChannelMainDiv">
	<h1 class="margin-left50px">나의 채널관리</h1>
	<hr/>
	<div>
	 	<div id="creatorChannelPicSq" class="margin-left50px"></div>
	 	<div id="creatorChannelName">크리에이터 이름</div>
	</div>
	<hr/>
	<div id="selectMenu">
		
			<input type="button" value="크리에이터 프로필">
			<input type="button" value="클래스 목록">
			<input type="button" value="클래스 결과물">
		
	</div>
	<hr/>
	<div id="summernote">Hello Summernote</div>
	<script>
	$(document).ready(function() {
  $('#summernote').summernote();
});
</script>
</div>