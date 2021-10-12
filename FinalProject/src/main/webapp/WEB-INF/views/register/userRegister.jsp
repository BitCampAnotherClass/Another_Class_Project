<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
<title>Another Class</title>
<style>
	.hyo_register_user{
		margin: 0 auto;
		padding-top:100px;
		width: 900px;
		height: 1000px;
	}
	.hyo_register_title-box, .hyo_register_form{
		width: 500px;
		margin: 0 auto;
	}
	.hyo_register_main-box{
		border:1px solid #464646;
		border-radius: 10px;
		width: 550px;
		margin: 0 auto;
	}
	.hyo_register_title-box{
		padding: 5px;
	}
	.hyo_register_form{
		padding: 10px;
	}
	.hyo_register_input-group{
		margin: 30px;
	}
	.hyo_register_button{
		margin: 0 auto;
		width: 100%;
		height: 30px;
		color:  #e5e5e5;
		border:0;
		background-color: #333;
	}
	.hyo_register_input-box, .hyo_register_input-outline {
		display: block;
		position: relative;
	}
	.hyo_register_input-outline{
		border: 1px solid #e5e5e5;
		width: 100%;
	}
	.hyo_register_input, .hyo_register_input_email{
		outline: 0;
		border: none;
		padding: 10px;
		font-size: 16px;
		width: 90%;
	}
	
	#hyo_register_email{
		height: 40px;
	}
	.hyo_register_input_email{
		width: 90%;
	}
	#hyo_register_input_email{
		width: 50%;
		margin-right: 4%;
	}
	#hyo_register_input_email_addr{
		width: 45%;
	}
	#hyo_register_input_email, #hyo_register_input_email_addr{
		float:left;
	}
</style>
</head>	
	<body>
	<div class="hyo_register_user">
		<div class="hyo_register_main-box">
			<div class="hyo_register_title-box">
				<h1 class="hyo_register_title">회원가입</h1>
			</div>
			<form class="hyo_register_form" method="post" action="<%=request.getContextPath()%>/userJoin" autocomplete="off" >
				<div id="hyo_register_id" class="hyo_register_input-group">
					<span class="hyo_register_input-outline">
						<span class="hyo_register_input-box">
							<input type="text" id="member_id" name="member_id" class="hyo_register_input" placeholder="아이디" autocomplete=”off” maxlength="15" onkeyup=""/>
							<label></label>			
						</span>
					</span>
				</div>
				<div id="hyo_register_pwd" class="hyo_register_input-group">
					<span class="hyo_register_input-outline">
						<span class="hyo_register_input-box">
							<input type="password" id="member_pw" name="member_pw" class="hyo_register_input" placeholder="비밀번호" autocomplete=”off” maxlength="16" autocomplete="new-password"/>
						</span>
					</span>
				</div>
				<div id="hyo_register_pwd" class="hyo_register_input-group">
					<span class="hyo_register_input-outline">
						<span class="hyo_register_input-box">
							<input type="password" id="member_pw_check" class="hyo_register_input" placeholder="비밀번호확인" autocomplete=”off” maxlength="16"/>
						</span>
					</span>
				</div>
				<div id="hyo_register_name" class="hyo_register_input-group">
					<span class="hyo_register_input-outline">
						<span class="hyo_register_input-box">
							<input type="text" id="member_name" name="member_name" class="hyo_register_input" placeholder="이름" autocomplete=”off” maxlength="7"/>				
						</span>
					</span>
				</div>
				<div id="hyo_register_tel" class="hyo_register_input-group">
					<span class="hyo_register_input-outline">
						<span class="hyo_register_input-box">
							<input type="text" id="member_tel" name="member_tel" class="hyo_register_input" placeholder="휴대폰번호" autocomplete=”off” maxlength="13"/>				
						</span>
					</span>
				</div>
				<div id="hyo_register_email" class="hyo_register_input-group">
					<span class="hyo_register_input-outline" id="hyo_register_input_email">
						<span class="hyo_register_input-box">	
							<input type="text" id="member_email" name="member_email" class="hyo_register_input_email" placeholder="이메일" autocomplete=”off” maxlength="15"/>
						</span>
					</span>
					<span class="hyo_register_input-outline" id="hyo_register_input_email_addr">
						<span class="hyo_register_input-box">	
							<input type="text" id="member_email_addr" name="member_email_addr" class="hyo_register_input_email" placeholder="이메일" autocomplete=”off” maxlength="15"/>
						</span>
					</span>
				</div>
				<button class="hyo_register_button">회원가입</button>
			</form>
		</div>
	</div>
</body>
</html>