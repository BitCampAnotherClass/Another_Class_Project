<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="<%=request.getContextPath()%>/css/admin/classManagement/classManagement.css" rel="stylesheet" type="text/css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>


<script>
	$(()=>{
		
	});
</script>
</head>
<body>
	<div class="userMg-model"></div>
	<div class="userMg-main">
			<div class="userMg-top">
				<h1 class="userMg-title">기본클래스 관리</h1>
				<div class="userMg-menu">
				</div>
			</div>
	
		<div class="userMg-bottom">
			<input type="hidden" value="1" class="paging-number"/>
			<ul class="userMg-chart-box">
				<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>
				<li class="userMg-chart-boardlist">클래스번호</li>
				<li class="userMg-chart-boardlist">카테고리</li>
				<li class="userMg-chart-boardlist">클래스명</li>
				<li class="userMg-chart-boardlist">강사명</li>
				<li class="userMg-chart-boardlist">등록일시</li>
				<li class="userMg-chart-boardlist">대기현황</li>
				<li class="userMg-chart-boardlist">진행현황</li>
				
				<c:forEach var="vo" items="${list }">	
					<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>
					<li class="userMg-chart-boardlist">${vo.class_no}</li>
					<li class="userMg-chart-boardlist">${vo.category_name}</li>
					<li class="userMg-chart-boardlist">${vo.class_name}</li>
					<li class="userMg-chart-boardlist">${vo.member_name}</li>
					<li class="userMg-chart-boardlist">${vo.class_writedate}</li>
					<li class="userMg-chart-boardlist">대기현황</li>
					<li class="userMg-chart-boardlist">진행현황</li>
					</c:forEach>
				
			</ul>
				<div class="userMg-board-margin">
					<div class="userMg-boardList-btn-outbox">
						<div class="userMg-boardList-btn-box"></div>
					</div>
				</div>
				
		</div>
	</div>
</body>
