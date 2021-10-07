<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/common.css" rel="stylesheet" type="text/css"/>
<style>
	.userMg-main{
		
	}
	.userMg-board-box>li:nth-child(5n+3){
		width: 20%;
	}
</style>
</head>
<body>
	<div class="userMg-main">
		<div class="userMg-top">
			<div class="userMg-top-search">
				<input />
			</div>
		</div>
		<div class="userMg-bottom">
			<ul class="userMg-chart-box">
				<li>아이디</li>
				<li>성명</li>
				<li>이메일</li>
				<li>휴대폰</li>
				<li>탈퇴일</li>
			</ul>
		</div>
	</div>
</body>
</html>