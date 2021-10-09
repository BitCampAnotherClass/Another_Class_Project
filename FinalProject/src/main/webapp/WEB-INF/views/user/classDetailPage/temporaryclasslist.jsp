<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>클래스임시리슽</h1>

<c:forEach var="vo" items="${list}">	
	<div>
		  ${vo.class_no },
		 <a href="/user/classDetailPage/temporaryclasslist?no=${vo.class_no}">${vo.class_name }</a>,
		 ${vo.class_content },
		 
		 
   </div>
</c:forEach>


</body>
</html>