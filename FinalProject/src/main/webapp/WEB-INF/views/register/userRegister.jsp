<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1"/>
<title>Another Class</title>
<link href="<%=request.getContextPath()%>/css/login.css" rel="stylesheet" type="text/css"/>
<link href="<%=request.getContextPath()%>/css/common.css" rel="stylesheet" type="text/css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
<style>
	.register_user{
		margin: 0 auto;
		width: 900px;
		height: 1000px;
	}
	.register_title-box, .register_form{
		margin: 0 auto;
	}
	.register_title-box{
		padding: 5px;
	}
	.register_input-group{
		margin: 30px;
	}
	.register_button{
		margin: 0 auto;
		width: 100%;
		height: 30px;
		color:  #e5e5e5;
		border:0;
		background-color: #333;
	}
	.register_input-box, .register_input-outline {
		display: block;
		position: relative;
	}
	.register_input-outline{
		border: 1px solid #e5e5e5;
		width: 100%;
	}
	.register_input, .register_input_email{
		outline: 0;
		border: none;
		padding: 10px;
		font-size: 16px;
		width: 90%;
	}
	#register_email{
		height: 40px;
	}
	.register_input_email{
		width: 90%;
	}
	#register_input_email{
		width: 50%;
		margin-right: 4%;
	}
	#register_input_email_addr{
		width: 45%;
	}
	#register_input_email, #register_input_email_addr{
		float:left;
	}
	#register_id_text, #register_pwd_text, #register_pwdCh_text{
		float: left;
		font-size: 0.9em;
		padding: 2px;
	}
</style>
<script type="text/javascript">
		$(()=>{
			var url = 'register/check';
			var check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
			$('#member_id').keyup(function(){
				var id = $('#member_id').val();
				var data = {"id":id};
				
				$.ajax({
					url: url
					, type: 'POST'
					, data: data
					, success:function(result){
						if(check.test(id)){
							document.getElementById('register_id_text').innerHTML="아이디는 영문자와 숫자로 만들어주세요";
							$('.register_id_check').val('N');
						}else{
							if(result=='YES'){
								document.getElementById('register_id_text').innerHTML="사용가능한 아이디입니다";
								$('.register_id_check').val('Y');
							}else{
								document.getElementById('register_id_text').innerHTML="사용중이거나 삭제된 아이디 입니다.";
								$('.register_id_check').val('N');
							}
						}
					}
					, error:function(error){
						console.log(error)
					}
				});
				
			});
			
			$('#member_pw_check, #member_pw').keyup(function passWordCheck(){
				
				console.log("비밀번호 확인작동");
				var check1 = $('#member_pw').val();
				var check2 = $('#member_pw_check').val();
				
				if(check1.length < 8 || check1.length > 20){
					$('#register_pwd_text').html("비밀번호 생성 규칙을 지켜주세요"); 
				}
				if(check1 != "" || check2 != ""){
					$('#register_pwdCh_text').html("비밀번호가 일치하지 않습니다.");
					if(check1 == check2){
						$('#register_pwdCh_text').html("비밀번호가 일치합니다.");
					}
				}
			});
			
			$('#register_button').submit(function(){
				var chk1 = $('.register_id_check').val();
				if(chk1 != Y){
					
				}	
			});
		});
</script>
</head>	
	<body>
	
	<div id="wrap">
	<header id="header">
		<div class="inner-header">
			<h1 class="logo ir-text"><a href="<%=request.getContextPath()%>/">어나더클래스</a></h1>
		</div>
	</header>
	
	<article id="container">
			<div class="contents">
				<div class="login-wrap">
					<div class="input-login-wrap">
						<div class="id-pw-wrap">
							<form class="register_form" method="post" action="<%=request.getContextPath()%>/userJoin" autocomplete="off" >
								<div id="register_id" class="register_input-group">
									<span class="register_input-outline">
										<span class="register_input-box">
											<input type="text" id="member_id" name="member_id" class="register_input" placeholder="아이디" autocomplete=”off” maxlength="15" />
										</span>
											<label id="register_id_text"></label>	
									</span>
								</div>
								<div id="register_pwd" class="register_input-group">
									<span class="register_input-outline">
										<span class="register_input-box">
											<input type="password" id="member_pw" name="member_pw" class="register_input" placeholder="비밀번호" autocomplete=”off” maxlength="16" autocomplete="new-password"/>
										</span>
											<label id="register_pwd_text"></label>
									</span>
								</div>
								<div id="register_pwd" class="register_input-group">
									<span class="register_input-outline">
										<span class="register_input-box">
											<input type="password" id="member_pw_check" name="member_pw_check" class="register_input" placeholder="비밀번호확인" autocomplete=”off” maxlength="16"/>
										</span>
											<label id="register_pwdCh_text"></label>
									</span>
								</div>
								<div id="register_name" class="register_input-group">
									<span class="register_input-outline">
										<span class="register_input-box">
											<input type="text" id="member_name" name="member_name" class="register_input" placeholder="이름" autocomplete=”off” maxlength="7"/>				
										</span>
									</span>
								</div>
								<div id="register_tel" class="register_input-group">
									<span class="register_input-outline">
										<span class="register_input-box">
											<input type="text" id="member_tel" name="member_tel" class="register_input" placeholder="휴대폰번호" autocomplete=”off” maxlength="13"/>				
										</span>
									</span>
								</div>
								<div id="register_email" class="register_input-group">
									<span class="register_input-outline" id="register_input_email">
										<span class="register_input-box">	
											<input type="text" id="member_email" name="member_email" class="register_input_email" placeholder="이메일" autocomplete=”off” maxlength="15"/>
										</span>
									</span>
									<span class="register_input-outline" id="register_input_email_addr">
										<span class="register_input-box">	
											<input type="text" id="member_email_addr" name="member_email_addr" class="register_input_email" placeholder="이메일" autocomplete=”off” maxlength="15"/>
										</span>
									</span>
								</div>
								<input type="hidden" class="register_id_check">
								<input type="hidden" class="register_pwd_check">
								<button class="register_button">회원가입</button>
						</form>
				</div>
			</div>
		</div>
	</div>
</article>
</div>
</body>
</html>