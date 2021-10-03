<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/common.css" rel="stylesheet" type="text/css"/>
<link href="css/login.css" rel="stylesheet" type="text/css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
</head>
<body>




<header id="header">
	<div class="inner-header">
		<h1 class="logo ir-text"><a href="#">어나더클래스</a></h1>
	</div>
</header>



<article id="container">
	<div class="contents">
		<!-- 로그인 박스 -->
		<div class="login-wrap">
			<ul class="tab-login">
				<li class="tab-login-user on"><a href="#none">회원 로그인</a></li>
				<li class="tab-login-creator"><a href="#none">강사 로그인</a></li>
			</ul>
			<div class="input-login-wrap">
				<form id="frmLogin" name="frmLogin" method="post">
					<div class="id-pw-wrap">
						<div class="input-id input-row">
							<input type="text" id="id" name="id" placeholder="아이디" title="아이디" maxlength="41"/>
						</div>
						<div class="input-pw input-row">
							<input type="password" id="pw" name="pw" placeholder="비밀번호" title="비밀번호" maxlength="16"/>
						</div>
					</div>
					<!-- // 아이디, 비번 입력 -->
					
					<div class="btn-login-wrap">
						<button type="submit" id="basicLogin" class="btn-login">
							<span>로그인</span>
						</button>
					</div>
					<!-- // 로그인 버튼 -->
					<div class="input-hidden">
						<!-- hidden -->
					</div>
					
				</form>
				
				<div class="kakao-login">
					<button type="button" id="kakagLogin" class="btn-login">
						<span>카카오톡으로 로그인하기</span>
					</button>
				</div>
			</div>
			<!-- // 로그인 입력 공간 -->
		</div>
		<!-- // 로그인 박스 -->
	</div>	
	
	
</article>




<footer id="footer">


</footer>



</body>
</html>




















