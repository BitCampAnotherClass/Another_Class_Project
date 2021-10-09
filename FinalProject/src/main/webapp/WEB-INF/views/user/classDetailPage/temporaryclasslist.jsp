<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.title{font-size:1.2rem;color:red;}
</style>
</head>
<body>
<h1>클래스임시리슽</h1>

<c:forEach var="vo" items="${list}">	
	<div>
		  ${vo.class_no },
		<label>클래스명 :</label><a href="/user/classDetailPage/temporaryclassView?no=${vo.class_no}" ><label class="title22">${vo.class_name }</label></a>,
		 ${vo.class_content },
		 
		  <img src="<%=request.getContextPath()%>/img/jisu/${vo.img_file}"/>
   </div>
</c:forEach>


</body>
</html>