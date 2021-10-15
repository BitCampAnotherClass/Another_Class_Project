<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	body{
		overflow:auto;
	}
	
	.userMg-main{
		width:1200px;
	}
	
	.userMg-top, .userMg-bottom{
		height:20%;
		margin-bottom: 3%;
	}
	
	.userMg-menu{
		padding-top:10px;
		border-bottom: 1px solid #464646;
	}
	
	.userMg-menu-btn{
		padding: 5px;
		border:1px;
		border-bottom: none;
		border-top-left-radius: 5px;
		border-top-right-radius: 5px;
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
	
	.userMg-chart-boardlist:nth-child(8n+1){
		width: 5%;
	}
	
	.userMg-chart-boardlist:nth-child(8n+2){
		width: 10%;
	}
	
	.userMg-chart-boardlist:nth-child(8n+3){
		width: 10%;
	}
	
	.userMg-chart-boardlist:nth-child(8n+7){
		width: 15%;
	}
	
	.userMg-chart-boardlist:nth-child(n+9){
		background:white;
		display: 
	}
</style>
<script>
	$(function(){
		var url="MemberMangement/userAccountList";
		var board= "";
		var test = 'test';
		function userList(){
			$.ajax({
				url : url,
				type : "GET",
				success:function(result){
					var listData = $(result);
					console.log('Ajax 성공 - 페이징');
					listData.each(function(idx,vo){
						board +='<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_id+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_name+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_email+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_tel+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.signupdate+'</li>';
						board +='<li class="userMg-chart-boardlist">'+test+'</li>';
						board +='<li class="userMg-chart-boardlist">';
						board +='<input type="button" value="상세 정보" id="account_information_btn"/>';
						board +='<input type="button" value="수정" />';
						board +='<input type="button" value="삭제" />';
						board +='</li>';
					});
					$(".userMg-chart-box").append(board);
				},error: function(error){
					console.log(error);
					console.log('AJAX 목록 불러오기 실패');
				}
			});
		}
		userList();
		$(document).on('click',"#account_information_btn",function(){
			$('.userMg-chart-box').attr('style','display:none');
			var member_information = '';
			member_information += '<div class="userMg-information-box">';
			member_information += '<input type="button" value="목록보기" class="account_list_btn" />';
			member_information += '</div>';
			$('.userMg-bottom').append(member_information);
		});
		
		$(document).on('click','.account_list_btn',function(){
			$('.userMg-information-box').css('display','none');
			$('.userMg-chart-box').css('display','block');
		});
	});
</script>
</head>
<body>
	<div class="userMg-main">
		<div class="userMg-top">
			<div class="userMg-top">
				<h1 class="userMg-title">회원리스트</h1>
				<div class="userMg-menu">
					<input type="button" value="이용자" class="userMg-menu-btn"/>
					<input type="button" value="크리에이터" class="userMg-menu-btn"/>
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
				<li class="userMg-chart-boardlist">구분</li>
				<li class="userMg-chart-boardlist">관리</li>
			</ul>
		</div>
	</div>
</body>
