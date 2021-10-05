<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	#createClassSubmitButton{width:100px; height:40px; color:gray; height:55px; width:200px; margin-left:750px; font-size:1.3em;}
 	#creatorChannelMainDiv{width:950px; height:785px;}
 	#creatorChannelMainDiv h1{margin-left:50px; color:gray;}
 	#creatorChannelMainDiv>div:nth-child(3){float:left; width:950px; height:210px;}
 	#creatorChannelCreatorName{float:left; background-color:pink; width:300px; height:50px; font-size:2em; margin-left:25px; margin-top:150px;}
 	#creatorChannelCreatorResumeDiv{border:1px solid gray; width:850px; height:500px; float:left; margin-left:50px;}
 	#picInsertSq{width:200px; height:200px; border:1px solid gray; margin-left:50px; float:left;}
    #picInsertSq>span{color:blue; line-height:200px; padding-left:50px;}
</style>
<div id="creatorChannelMainDiv">
	<div><h1>나의채널관리</h1></div>
	<hr/>
	<div>
		<div id="picInsertSq"></div><!-- 같은 클래스 또는 아이디를 사용해서 사진을 가지고 와도 돼는지? -->
		<div id="creatorChannelCreatorName"></div>
	</div>
	<hr/>
	<div id="creatorChannelCreatorResumeDiv"></div>
</div>	
	<hr/>
