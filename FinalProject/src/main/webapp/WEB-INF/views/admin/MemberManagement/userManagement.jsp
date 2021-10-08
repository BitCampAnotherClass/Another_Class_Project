<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	body{
		overflow:auto;
	}
	.userMg-main{
		width:1200px;
		margin-left:300px;
		padding: 20px;
	}
	.userMg-top, .userMg-bottom{
		border: 1px solid #464646;
		height:20%;
		margin-bottom: 3%;
	}
	.userMg-chart-box, .userMg-top-search{
		padding:20px;
		width:1200px;
		height:200px;
	}
	.userMg-chart-box{
		width:1160px;
	}
	.userMg-chart-boardlist{
		float: left;
		width:15%;
		height: 40px;
		line-height: 40px;
		text-align:center;
		background:#f0f0f0;
		border:1px solid #f0f0f0;
	}
	.userMg-chart-boardlist:nth-child(7n+1){
		width: 5%;
	}
	.userMg-chart-boardlist:nth-child(7n+3){
		width: 20%;
	}
	.userMg-chart-boardlist:nth-child(n+8){
		background:white;
	}
</style>
</head>
<body>
	<div class="userMg-main">
		<div class="userMg-top">
			<div class="userMg-top-search">
				
			</div>
		</div>
		<div class="userMg-bottom">
			<ul class="userMg-chart-box">
				<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>
				<li class="userMg-chart-boardlist">아이디</li>
				<li class="userMg-chart-boardlist">성명</li>
				<li class="userMg-chart-boardlist">이메일</li>
				<li class="userMg-chart-boardlist">휴대폰</li>
				<li class="userMg-chart-boardlist">탈퇴일</li>
				<li class="userMg-chart-boardlist">관리</li>
				<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>
				<li class="userMg-chart-boardlist">기본</li>
				<li class="userMg-chart-boardlist">기본</li>
				<li class="userMg-chart-boardlist">기본</li>
				<li class="userMg-chart-boardlist">기본</li>
				<li class="userMg-chart-boardlist">기본</li>
				<li class="userMg-chart-boardlist">기본</li>
			</ul>
		</div>
	</div>
</body>
