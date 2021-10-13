<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/common.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/css/login.css" rel="stylesheet" type="text/css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jsbn.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/rsa.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/prng4.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/rng.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	// 유효성 검사
	function validateFrm(){
		console.log('실행');
		var memberId = document.getElementById('view_id').value;
		var memberPw = document.getElementById('view_pw').value;
		
		if(memberId == ''){
			alert('아이디를 입력해주세요.');
			return false;
		}
		if(memberPw == ''){
			alert('비밀번호를 입력해주세요.');
			return false;
		}
		
		encryptFrm(memberId, memberPw); // 암호화 실행
		return false;
	}
	
	
	// ID, 비밀번호 암호화
	function encryptFrm(memberId, memberPw){
		try{
			var RSAModulus = document.getElementById('RSAModulus').value;
			var RSAExponent = document.getElementById('RSAExponent').value;
		} catch(error){
			alert('잠시 후 다시 시도해 주세요.');
			console.log(error);
		}
		
		// RSA 암호화
		var rsa = new RSAKey();
		rsa.setPublic(RSAModulus, RSAExponent);
		document.getElementById('member_id').value = rsa.encrypt(memberId);
		document.getElementById('member_pw').value = rsa.encrypt(memberPw);

		frmLogin.submit();
	}
	
	
	

</script>


</head>
<body>


<div id="wrap">
	
	<header id="header">
		<div class="inner-header">
			<h1 class="logo ir-text"><a href="<%=request.getContextPath()%>/">어나더클래스</a></h1>
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
					<!-- 보여지는 로그인 입력 칸 -->
					<div class="id-pw-wrap">
						<div class="input-id input-row">
							<input type="text" id="view_id" placeholder="아이디" title="아이디" maxlength="16"/>
						</div>
						<div class="input-pw input-row">
							<input type="password" id="view_pw" placeholder="비밀번호" title="비밀번호" maxlength="16"/>
						</div>
					</div>
					<div class="input-hidden">
						<input type="hidden" id="RSAModulus" value="${RSAModulus }"/>
						<input type="hidden" id="RSAExponent" value="${RSAExponent }"/>
					</div>
					<!-------- 로그인 폼 --------->
					<form id="frmLogin" name="frmLogin" method="post" action="loginOk">
						<div class="secret-id-pw-wrap">
							<input type="hidden" id="member_id" name="member_id"/>
							<input type="hidden" id="member_pw" name="member_pw"/>
						</div>
						<!-- // 아이디, 비번 -->
						<div class="chk-login-wrap">
							<input type="checkbox"/> 로그인 유지하기
						</div>
					</form>
					
					<!-- // 로그인 버튼 - 자바스크립트 미설치 시 로그인 실패 화면-->
					<div class="btn-login-wrap">
						<a href="#" onclick="validateFrm(); return false;" id="basicLogin" class="btn-login">로그인</a>
					</div>
					
					<div class="kakao-login">
						<button type="button" id="kakagLogin" class="btn-login">
							<span>카카오톡 아이디로 시작하기</span>
						</button>
					</div>
					<div class="naver-login">
						<button type="button" id="naverLogin" class="btn-login">
							<span>네이버 아이디로 시작하기</span>
						</button>
					</div>
					
					<div class="find-account">
						아이디 찾기 | 비밀번호 찾기
					</div>
					
					<div class="btn-signup-wrap">
						<button type="button" id="basicSignup" class="btn-login">
							<span>회원가입</span>
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


</div>
</body>
</html>




















