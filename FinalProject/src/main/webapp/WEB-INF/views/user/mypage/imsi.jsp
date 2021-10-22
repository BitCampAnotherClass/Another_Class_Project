<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="myPageTop.jspf" %>
<link href="<%=request.getContextPath()%>/css/user/accountEdit.css" rel="stylesheet" type="text/css"/>
<script>
$(()=>{
	var url = 'account_edit/check';
	var checkEng = /[a-z|A-Z|0-9]/;
	var checkKor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	$('#member_id').keyup(function(){
		var id = $('#member_id').val();
		var data = {"id":id};
		// 아이디 조회
		$.ajax({
			url: url
			, type: 'POST'
			, data: data
			, success:function(result){
					
					if(id.length< 5 || id.length > 15){
						$('#account_edit_id_text').css("color","#ff0000");
						document.getElementById('account_edit_id_text').innerHTML="아이디는 5~ 15자의 영문과 숫자로만 사용가능합니다.";
						$('.account_edit_id_check').val('N');
					}else{
						if(checkEng.test(id)){
							if(result=='YES'){
								$('#account_edit_id_text').css("color","#22b14d");
								document.getElementById('account_edit_id_text').innerHTML="사용가능한 아이디입니다";
								$('.account_edit_id_check').val('Y');
							}else{
								$('#account_edit_id_text').css("color","#ff0000");
								document.getElementById('account_edit_id_text').innerHTML="사용중이거나 삭제된 아이디 입니다.";
								$('.account_edit_id_check').val('N');
							}
						}else{
							$('#account_edit_id_text').css("color","#ff0000");
							document.getElementById('account_edit_id_text').innerHTML="아이디는 5~ 15자의 영문과 숫자로만 사용가능합니다.";
							$('.account_edit_id_check').val('N');
						}
					}
				}
			
			, error:function(error){
				console.log(error)
			}
		});
		
	});
	$('#member_pw_check, #member_pw').on('propertychange change keyup paste input',function passWordCheck(){
		var checkPwd = $('#member_pw').val();
		if(checkPwd.length < 8 || checkPwd.length > 20){
			$('#account_edit_pwd_text').css("color","#ff0000");
			$('#account_edit_pwd_text').html("비밀번호는 8자 이상 생성 가능합니다.");
			$('.account_edit_pwd_check').val('N');
		}else{
			$('#account_edit_pwd_text').css("color","#22b14d");
			$('#account_edit_pwd_text').html("사용가능한 비밀번호");
			$('.account_edit_pwd_check').val('Y');
		}
	});
	$('#member_pw_check').on('propertychange change keyup paste input',function passWordChecking(){
		var check1 = $('#member_pw').val();
		var check2 = $('#member_pw_check').val();
		if(check1 != "" || check2 != ""){
			$('#account_edit_pwdCh_text').css("color","#ff0000");
			$('#account_edit_pwdCh_text').html("비밀번호가 일치하지 않습니다.");
			$('.account_edit_pwd_check').val('N');
			if(check1 == check2){
				$('#account_edit_pwdCh_text').css("color","#22b14d");
				$('#account_edit_pwdCh_text').html("비밀번호가 일치합니다.");
				$('.account_edit_pwd_check').val('Y');
			}
		}
	});
	$('#member_email_id, #member_email_addr').on('propertychange change keyup paste input',function emailSeting(){
		var eID = $('#member_email_id').val();
		var addrEmail =$('#member_email_addr').val();
		$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
		if(!checkEng.test(eID) && !checkEng.test(addrEmail)){
			$('#account_edit_emailCh_text').css("color","#ff0000");
			$('#account_edit_emailCh_text').html("사용 불가능한 이메일 입니다.");
			$('.account_edit_email_check').val('N');
			console.log($('.account_edit_email_check').val());
		}else{
			$('#account_edit_emailCh_text').css("color","#22b14d");
			$('#account_edit_emailCh_text').html("사용가능한 이메일 입니다.");
			var emailVal = eID+'@'+addrEmail;
			$('#member_email').attr('value',emailVal);
			$('.account_edit_email_check').val('Y');
		}
	});
	
	$('#member_tel').on('propertychange change keyup paste input',function telCheck(){
		$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣|a-z|A-Z]/g, '' ) );
		var tel = $('#member_tel').val();
		var numChk = /^[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}$/;
		if(numChk.test(tel)){
			$('.account_edit_tel_check').val('Y');
			$('#member_tel').attr('readonly','true');
			$('#account_edit_tel_text').css("color","#22b14d");
			$('#account_edit_tel_text').html("사용가능한 전화번호");
		}else{
			$('#account_edit_tel_text').css("color","#ff0000");
			$('#account_edit_tel_text').html("전화번호 형식이 맞지 않습니다.");
			$('.account_edit_tel_check').val('N');
		}
	});
});
</script>
<style>
	.myPage-accountView-title{
		padding:20px;
	}
	.myPage-accountView-picther{
		margin-left: 20px;
		float: left;
	}
	.myPage-accountView-picther{
		border:1px solid black;
		border-radius: 10px;
		width: 150px;
		height: 150px;
	}
	.myPage-accountView-ul{
		width: 800px;
		padding:10px;		
		float: left;
	}
</style>
<div>
	<div>
		<div class="myPage-accountEdit-main">
			<div class="myPage-accountView-View">
				<div class="myPage-accountView-menu">
						<div class="myPage-accountView-title">
							<h2>회원 정보 수정</h2>
						</div>
					<div class="">
						<div class="myPage-accountView-picther"></div>
						<div class="">
							<ul class="myPage-accountView-ul">
								<li id="myPage-accountView-id" class="myPage-accountView-list">이름</li>
								<li id="myPage-accountView-tel" class="myPage-accountView-list">전화번호</li>
								<li id="myPage-accountView-email" class="myPage-accountView-list">이메일</li>
							</ul>
						</div>
					</div>
				</div>
			<div class="myPage-accountEdit-Edit" style="display:none">
				<div>
					<h2>프로필 수정</h2>
				</div>
				<form class="account_edit_form" method="post" action="<%=request.getContextPath()%>/registerEdit" autocomplete="off" >
						<div id="account_edit_id" class="account_edit_input-group">
							<span class="account_edit_input-outline">
								<span class="account_edit_input-box">
										<input type="text" id="member_id" name="member_id" class="account_edit_input" placeholder="아이디" autocomplete=”off” maxlength="15" />
								</span>
										<label id="account_edit_id_text"></label>	
								</span>
							</div>
								<div id="account_edit_pwd" class="account_edit_input-group">
									<span class="account_edit_input-outline">
										<span class="account_edit_input-box">
											<input type="password" id="member_pw" name="member_pw" class="account_edit_input" placeholder="비밀번호" autocomplete=”off” maxlength="16" autocomplete="new-password"/>
										</span>
											<label id="account_edit_pwd_text"></label>
									</span>
								</div>
								<div id="account_edit_pwd" class="account_edit_input-group">
									<span class="account_edit_input-outline">
										<span class="account_edit_input-box">
											<input type="password" id="member_pw_check" name="member_pw_check" class="account_edit_input" placeholder="비밀번호확인" autocomplete=”off” maxlength="16"/>
										</span>
											<label id="account_edit_pwdCh_text"></label>
									</span>
								</div>
								<div id="account_edit_name" class="account_edit_input-group">
									<span class="account_edit_input-outline">
										<span class="account_edit_input-box">
											<input type="text" id="member_name" name="member_name" class="account_edit_input" placeholder="이름" autocomplete=”off” maxlength="7"/>				
										</span>
									</span>
								</div>
								<div id="account_edit_tel" class="account_edit_input-group">
									<span class="account_edit_input-outline">
										<span class="account_edit_input-box">
											<input type="text" id="member_tel" name="member_tel" class="account_edit_input" placeholder="휴대폰번호" autocomplete=”off” maxlength="13"/>				
										</span>
											<label id="account_edit_tel_text"></label>	
									</span>
								</div>
								<div id="account_edit_email" class="account_edit_input-group">
									<span class="account_edit_input-outline" id="account_edit_input_email">
										<span class="account_edit_input-box">
											<input type="text" id="member_email_id" name="member_email_id" class="account_edit_input_email" placeholder="이메일" autocomplete=”off” maxlength="15"/>
										</span>
									</span>
								<span class="member_email_AtSign">@</span>	
									<span class="account_edit_input-outline" id="account_edit_input_email_addr">
								<span class="account_edit_input-box">
									<input type="text" id="member_email_addr" name="member_email_addr" class="account_edit_input_email" placeholder="직접입력" autocomplete=”off” maxlength="12"/>
								</span>
								</span>
							<label id="account_edit_emailCh_text"></label>	
						</div>
					<input type="hidden" id="member_email" name="member_email"/>
					<input type="hidden" class="account_edit_id_check" value="N">
					<input type="hidden" class="account_edit_pwd_check" value="N">
					<input type="hidden" class="account_edit_email_check" value="N">
					<input type="hidden" class="account_edit_tel_check" value="N">
					<button type="button" class="account_edit_button">수정하기</button>
					</form>
				</div>			
			</div>
		</div>
	</div>
</div>
<%@ include file="myPageBottom.jspf" %>