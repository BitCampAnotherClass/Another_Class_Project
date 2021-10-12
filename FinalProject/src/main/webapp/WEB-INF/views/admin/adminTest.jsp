<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form class="hyo_register_form" method="post" action="adminAccountMake" autocomplete="off" >
		<input type="text" id="member_id" name="member_id" class="hyo_register_input" placeholder="아이디" autocomplete=”off” maxlength="15" onkeyup=""/>
		<input type="password" id="member_pw" name="member_pw" class="hyo_register_input" placeholder="비밀번호" autocomplete=”off” maxlength="16" autocomplete="new-password"/>
		<input type="hidden" name="additional_information_one;"/>
		<input type="submit" value="테스트"/>
	</form>
	
</body>
</html>