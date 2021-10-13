<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>  


<style>
li{float:left;}
#myChannelMainDiv{background-color:pink;
	width:1200px;
	margin:0 auto;
	height:1000px;
	padding-top:20px;
}
.divideDiv{
	width:100%;
	height:420px;
}
.divideDiv div{
	float:left;
}
.creatorImgDiv{background-color:lightblue;
	border-radius:200px;
	width:400px;
	height:400px;
	margin: 0px 0px 0px 20px;
}
#creatorNameDiv{background-color:white;
	width:400px;
	height:120px;
	margin:270px 0px 0px 0px;
}
#creatorNameDiv>ul>li{background-color:;
	width:100%;
	text-align: center;
}
#creatorNick{
	font-size:2em; 
	color:gray;
	font-weight:500;
	border-bottom: 3px solid lightgray;
	width: 100%;
	height:50px;
}
#myChannelMenuDiv{
}
#myChannelMenuDiv li{
	width:33.3%;
	line-height:45px;
	height:50px;
	text-align: center;
	border:3px solid lightgray;
	font-size:1.3em; 
	color:gray;
}
</style>
<script>
	
</script>
<div id="myChannelMainDiv">
	<div class="divideDiv">
		<div class="creatorImgDiv"></div>
		<div id="creatorNameDiv">
			<ul>
				<li><div id="creatorNick">버드세이지 플라워</div></li>
				<li>젅</li>
			</ul>
		</div>
	</div>
	<div id="myChannelMenuDiv">
		<ul>
			<li>크리에이터 프로필</li>
			<li>개설 클래스</li>
			<li>클래스 결과물</li>
		</ul>
	</div>
</div>