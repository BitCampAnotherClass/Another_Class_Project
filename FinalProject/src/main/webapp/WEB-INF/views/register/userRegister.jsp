<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	.hyo_register_user{
		margin: 0 auto;
		padding-top:100px;
		width: 900px;
		height: 1000px;
	}
	.hyo_register_title-box, .hyo_register_form{
		margin: 0 auto;
		width: 500px;
	}
	.hyo_register_title-box{
		padding: 5px;
	}
	.hyo_register_form{
		padding: 10px;
	}
	#hyo_register_input-group{
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
	.hyo_register_input{
		outline: 0;
		border: none;
		padding: 10px;
		font-size: 16px;
		width: 90%;
	}
</style>
<script>
	$(()=>{
		
		$(".hyo_register_form").submit(function(){
			var check = $("#member_id").val();
			console.log(check);
			if(check==""){
				return false;
			}
		});
	});
</script>
	<div class="hyo_register_user">
		<div class="hyo_register_title-box">
			<h1 class="hyo_register_title">회원가입</h1>
		</div>
		<form class="hyo_register_form" method="post" action="another/registerJoin">
			<div class="hyo_register_id" id="hyo_register_input-group">
				<span class="hyo_register_input-outline">
					<span class="hyo_register_input-box">
						<input type="text" id="member_id" name="member_id" class="hyo_register_input" placeholder="아이디" autocomplete=”off” maxlength="15"/>				
					</span>
				</span>
			</div>
			<div class="hyo_register_pwd" id="hyo_register_input-group">
				<span class="hyo_register_input-outline">
					<span class="hyo_register_input-box">
						<input type="password" id="member_pw" name="member_pw" class="hyo_register_input" placeholder="비밀번호" autocomplete=”off” maxlength="16"/>
					</span>
				</span>
			</div>
			<div class="hyo_register_pwd" id="hyo_register_input-group">
				<span class="hyo_register_input-outline">
					<span class="hyo_register_input-box">
						<input type="password" id="member_pw_check" class="hyo_register_input" placeholder="비밀번호확인" autocomplete=”off” maxlength="16"/>
					</span>
				</span>
			</div>
			<div class="hyo_register_name" id="hyo_register_input-group">
				<span class="hyo_register_input-outline">
					<span class="hyo_register_input-box">
						<input type="text" id="member_name" name="member_name" class="hyo_register_input" placeholder="이름" autocomplete=”off” maxlength="7"/>				
					</span>
				</span>
			</div>
			<div class="hyo_register_tel" id="hyo_register_input-group">
				<span class="hyo_register_input-outline">
					<span class="hyo_register_input-box">
						<input type="text" id="member_tel" name="member_tel" class="hyo_register_input" placeholder="휴대폰번호" autocomplete=”off” maxlength="13"/>				
					</span>
				</span>
			</div>
			<div class="hyo_register_email" id="hyo_register_input-group">
				<span class="hyo_register_input-outline">
					<span class="hyo_register_input-box">	
						<input type="text" id="member_email" name="member_email" class="hyo_register_input" placeholder="이메일" autocomplete=”off” maxlength="15"/>
					</span>
				</span>
			</div>
			<button class="hyo_register_button">회원가입</button>
		</form>
	</div>
