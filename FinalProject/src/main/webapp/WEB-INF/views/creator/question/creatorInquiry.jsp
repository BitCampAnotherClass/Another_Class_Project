<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.inquiry-boardlist{
		float: left;
		width:15%;
		height: 40px;
		line-height: 40px;
		text-align:center;
		background:#f0f0f0;
		border:1px solid #f0f0f0;
	}
	
	.inquiry-boardlist:nth-child(6n+1){
		width: 5%;
	}
	
	.inquiry-boardlist:nth-child(6n+2){
		width: 10%;
	}
	
	.inquiry-boardlist:nth-child(6n+3){
		width: 10%;
	}
	.inquiry-boardlist:nth-child(6n+4){
		width: 45%;
	}
	.inquiry-boardlist:nth-child(n+7){
		background:white;
	}
</style>
</head>
<body>
	<div>
		<div>
			<div>
				<h2>동기식 게시판생성</h2>
			</div>
			<div>
				<ul>
					<li class="inquiry-boardlist"><input type="checkbox" id="allcheck"/></li>
					<li class="inquiry-boardlist">번호</li>
					<li class="inquiry-boardlist">아이디</li>
					<li class="inquiry-boardlist">글제목</li>
					<li class="inquiry-boardlist">작성일</li>
					<li class="inquiry-boardlist">기타</li>
					<c:forEach var="vo" items="${list}">
						<li class="inquiry-boardlist"><input type="checkbox" id="cheBox"/></li>
						<li class="inquiry-boardlist">${vo.user_qna_no}</li>
						<li class="inquiry-boardlist">${vo.member_id}</li>
						<li class="inquiry-boardlist">${vo.title }</li>
						<li class="inquiry-boardlist">${vo.writedate }</li>
						<li class="inquiry-boardlist">test</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>