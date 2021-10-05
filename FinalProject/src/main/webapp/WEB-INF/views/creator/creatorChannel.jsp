<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	#myChannelMainDiv{
		background-color:pink; height:1500px; width:950px; margin:0 auto;
	}
	.margin-left50px{
		margin-left:50px;
	}
	#myChannelMainDiv>h1{
		color:gray;
	}
	#myChannelMainDiv>div{
		background-color:lightblue; width:950px; height:240px;
	}
	#creatorChannelPicSq{
		width:200px; height:240px; border:1px solid gray;  float:left;
	}
	#creatorChannelName{
		background-color:gray; width:200px; height:55px; float:left; margin-top:185px;
	}

</style>
<div id="myChannelMainDiv">
	<h1 class="margin-left50px">나의 채널관리</h1>
	<hr/>
	<div>
	 	<div id="creatorChannelPicSq" class="margin-left50px"></div>
	 	<div id="creatorChannelName"></div>
	</div>
	<hr/>
</div>