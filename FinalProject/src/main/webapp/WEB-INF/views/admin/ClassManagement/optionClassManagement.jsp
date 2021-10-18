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
		width:12%;
		height: 40px;
		line-height: 40px;
		text-align:center;
		background:#f0f0f0;
		border:1px solid #f0f0f0;
	}
	.userMg-chart-boardlist:nth-child(8n+1){
		width: 5%;
	}
	.userMg-chart-boardlist:nth-child(8n+3){
		width: 20%;
	}
	.userMg-chart-boardlist:nth-child(n+9){
		background:white;
	}
</style>
<!-- 
<script>
	$(function(){
		var url="MemberMangement/userAccountList";
		var board= "";
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
						board +='<li class="userMg-chart-boardlist">'+vo.member_id+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_name+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_email+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_tel+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.signupdate+'</li>';
						board +='<li class="userMg-chart-boardlist">';
						board +='<input type="button" value="button"/>';
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
	});
</script>
 -->
</head>
<body>
	<div class="userMg-main">
		<div class="userMg-top">
			<div class="userMg-top">
				<h1 class="userMg-title">옵션별 클래스 관리</h1>
				<div class="userMg-menu">
					
				</div>
			</div>
		</div>
		<div class="userMg-bottom">
			<ul class="userMg-chart-box">
				<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>
				<li class="userMg-chart-boardlist">클래스번호</li>
				<li class="userMg-chart-boardlist">카테고리</li>
				<li class="userMg-chart-boardlist">클래스명</li>
				<li class="userMg-chart-boardlist">신청인원/수강인원</li>
				<li class="userMg-chart-boardlist">수강생목록</li>
				<li class="userMg-chart-boardlist">대기현황</li>
				<li class="userMg-chart-boardlist">진행현황</li>
				
				
			</ul>
		</div>
	</div>
</body>
