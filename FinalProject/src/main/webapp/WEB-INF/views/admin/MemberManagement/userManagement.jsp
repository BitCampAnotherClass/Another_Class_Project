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
	.userMg-information-back{
		background-color: rgba(0, 0, 0, 0.3);
		position: fixed;
		width:100%;
		height:100vh;
		z-index:1000;
	}
	.userMg-information-box{
  		position: relative;
 	 	width: 100%;
 	 	height: 100%;
	}
	.userMg-information-popup{
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  transform: translate(-50%, -50%);
	  background-color: #ffffff;
	  box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
	  
	  /* 임시 지정 */
	  width: 500px;
	  height: 500px;
	}
</style>
<script>
	$(function(){
		var url="MemberMangement/userAccountList";
		var board= "";
		
		function userList(){
			var test = 'test';
			var number = $('.paging-number').val();
			var data = {"no":number};
			console.log(data);
			$.ajax({
				url : url,
				type : "POST",
				data : data,
				success:function(result){
					var listData = $(result);
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
			var member_information = '';
			member_information += '<div class="userMg-information-back">';
			member_information += '<div class="userMg-information-box">';
			member_information += '<div class="userMg-information-popup">';
			member_information += '<h2>이름</h2>';
			member_information += '<span>아이디</span>';
			member_information += '<input type="button" value="목록보기" class="account_list_btn" />';
			member_information += '</div>';
			member_information += '</div>';
			member_information += '</div>';
			$('#contents-wrap').before(member_information);
		});
		
		$(document).on('click','.account_list_btn',function(){
			$('.userMg-information-box').remove();
			$('.userMg-information-back').remove();
			$('.userMg-information-popup').remove();
		});
		
		$('.userMg-boardList-btn').on('click',function(){
			console.log( $(this).val() );
			$('.paging-number').val($(this).val());
			$('.userMg-chart-boardlist:nth-child(n+9)').remove();
			userList();
		});
	});
</script>
</head>
<body>
	<div class="userMg-model"></div>
	<div class="userMg-main">
			<div class="userMg-top">
				<h1 class="userMg-title">회원리스트</h1>
				<div class="userMg-menu">
					<input type="button" value="이용자" class="userMg-menu-btn"/>
					<input type="button" value="크리에이터" class="userMg-menu-btn"/>
					
					<a href="MemberMangement/test">테스트</a>
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
			<input type="button" class="userMg-boardList-btn" value="2"/>
		</div>
	</div>
</body>
