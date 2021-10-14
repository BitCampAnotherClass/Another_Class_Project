<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	body{
		overflow:auto;
	}
	.userMg-title{
		
	}
	.userMg-main{
		width:1200px;
	}
	.userMg-top, .userMg-bottom{
		/*border: 1px solid #464646; */
		height:20%;
		margin-bottom: 3%;
	}
	.userMg-chart-box, .userMg-top-search{
		width:1200px;
		height:200px;
	}
	.userMg-chart-box{
		width:1200px;
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
	.userMg-menu{
		
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
<script type="text/javascript">
	$(function(){  
		function userList() {
			var url ="/another/MemberMangement/AccountUserList";
			var board = '';
			$.ajax({
				url:url,
				type:'POST',
				success:function(result){
					var result = $(result);					
					result.each(function(num,vo){
						board +='<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>';
						board +='<li class="userMg-chart-boardlist">기본</li>';
						board +='<li class="userMg-chart-boardlist">기본</li>';
						board +='<li class="userMg-chart-boardlist">기본</li>';
						board +='<li class="userMg-chart-boardlist">기본</li>';
						board +='<li class="userMg-chart-boardlist">기본</li>';
						board +='<li class="userMg-chart-boardlist">';
						board +='<input type="button" value="상세 정보"/>';
						board +='<input type="button" value="수정" />';
						board +='<input type="button" value="삭제" />';
						board +='</li>';
					});
					$("#userMg-chart")
				}
				
			});
		}
	}
</script>
</head>
<body>
	<div class="userMg-main">
		<div class="userMg-top">
			<div class="userMg-top">
				<h1 class="userMg-title">회원리스트</h1>
				<div class="userMg-menu">
					
				</div>
			</div>
		</div>
		<div class="userMg-bottom">
			<ul class="userMg-chart-box">
				<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>
				<li class="userMg-chart-boardlist">아이디</li>
				<li class="userMg-chart-boardlist">성명</li>
				<li class="userMg-chart-boardlist">이메일</li>
				<li class="userMg-chart-boardlist">휴대폰</li>
				<li class="userMg-chart-boardlist">가입일</li>
				<li class="userMg-chart-boardlist">관리</li>
				
				
				
			</ul>
		</div>
	</div>
</body>
