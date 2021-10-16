<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="<%=request.getContextPath()%>/css/admin/memberManagement/memberManagement.css" rel="stylesheet" type="text/css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
<script src="<%=request.getContextPath()%>/js/admin/memberManagement/memberManagement.js"></script>


</head>
<body>
	<div class="userMg-model"></div>
	<div class="userMg-main">
			<div class="userMg-top">
				<h1 class="userMg-title">회원리스트</h1>
				<div class="userMg-menu">
					<input type="button" value="회원 전체목록" class="userMg-menu-btn"/>
				</div>
			</div>
	
		<div class="userMg-bottom">
			<input type="hidden" value="1" class="paging-number"/>
			<ul class="userMg-chart-box">
				<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>
				<li class="userMg-chart-boardlist">아이디</li>
				<li class="userMg-chart-boardlist">성명</li>
				<li class="userMg-chart-boardlist">이메일</li>
				<li class="userMg-chart-boardlist">휴대폰</li>
				<li class="userMg-chart-boardlist">가입일</li>
				<li class="userMg-chart-boardlist">구분</li>
				<li class="userMg-chart-boardlist">관리</li>
			</ul>
			<div class="userMg-boardList-btn-box">
			
			</div>
		</div>
	</div>
</body>
