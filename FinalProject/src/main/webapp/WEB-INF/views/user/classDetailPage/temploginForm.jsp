<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>로그인</h1>
<form method="post" action="/teamproject/loginOk">
   id : <input type="text" name="member_id"/>
   pwd : <input type="password" name="member_pw"/>
   <input type="submit" value="Login"/>
</form>
</body>
</html>