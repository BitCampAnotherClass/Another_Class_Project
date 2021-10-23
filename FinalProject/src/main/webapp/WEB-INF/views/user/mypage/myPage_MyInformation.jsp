<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="myPageTop.jspf" %>
<link href="<%=request.getContextPath()%>/css/user/accountEdit.css" rel="stylesheet" type="text/css"/>
<script>
$(()=>{
	
	function modelMenuSeting(){
		var modal = '';
		modal += '<div class="myPage-information-back" style="display:none">';
		modal += '<div class="myPage-information-box" style="display:none">';
		modal += '<div class="myPage-information-popup" style="display:none">';
		modal += '<button class="myPage-popup-close-button">X</button>';
		modal += '</div>';
		modal += '</div>';
		modal += '</div>';
		$('body').prepend(modal);
	}
	modelMenuSeting();
	
	$(document).on('click','.myPage-popup-close-button',function() {
		$('.myPage-information-back').css('display','none');
		$('.myPage-information-box').css('display','none');
		$('.myPage-information-popup').css('display','none');
	});
	
	$(document).on('click','.account_pic_edit',function() {
		$('.myPage-information-back').css('display','block');
		$('.myPage-information-box').css('display','block');
		$('.myPage-information-popup').css('display','block');
	});
	
	var url = 'account_edit/check';
	var checkEng = /[a-z|A-Z|0-9]/;
	var checkKor = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;

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
			$('#member_tel').click(function(){
				$('#member_tel').removeAttr('readonly');
			});	
		}else{
			$('#account_edit_tel_text').css("color","#ff0000");
			$('#account_edit_tel_text').html("전화번호 형식이 맞지 않습니다.");
			$('.account_edit_tel_check').val('N');
		}
	});
	
	function email_Seting(){
		var emailData;
	    email = '${vo.member_email}';
	    emailSplit = email.split('@');
	    document.getElementById('member_email_id').value = emailSplit[0];
	    document.getElementById('member_email_addr').value = emailSplit[1]; 
	}
	email_Seting();
	});
	function inputClick(data) {
		data.readOnly = false;
	}
	
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function daumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                console.log(data.zonecode);
                document.getElementById('account_post_no').value = data.zonecode;
                document.getElementById("account_addr1").value = roadAddr;
                document.getElementById('member_addr_Data').value = roadAddr;
            }
        }).open();
    }
</script>
<style>
	.myPage-accountView-title{
		padding:10px;
	}
	.myPage-popup-close-button{
		float: right;
	}
	.myPage-accountView-picther{
		overflow: hidden;
	}
	.myPage-accountView-menu{
		margin-left: 20px;
	}
	.myPage-accountView-picther{
		float: left;
		margin-left: 7.5px;
		border:1px solid black;
		border-radius: 10px;
		width: 150px;
		height: 150px;
	}
	.myPage-accountView-ul{
		width: 700px;
		height: 150px;
		padding:10px;		
		float: left;
	}
	.myPage-accountView-main{
		width: 1000px;
	}
	.myPage-accountView-box, .myPage-accountView-box-email, .myPage-accountView-box-addr, .myPage-accountView-box-infoAddr{
		width: 580px;
		height: 50px;
		margin: 5px;	
		float: left;
	}
	.myPage-accountView-box-addr{
		width: 580px;
	}
	.myPage-accountView-box-infoAddr{
		width: 500px;
	}
	.myPage-accountView-box-email{
		width: 600px;
	}
	.myPage-accountView-info-list{
		margin-top:20px;
		float: left;
		border-top:1px solid #c2c2c2;
		width: 1000px;
		height: 400px;
	}
	.myPage-accountView-info{
		padding:5px;
		border-bottom: 1px solid #f5f5f5;
		width: 800px;
		float: left;
	}
	.myPage-accountView-box-title, .myPage-accountView-box-title-addr{
		float:left;
		width:100px;
		height:50px;
		text-align: center;
		line-height: 50px;
		font-size: 1.1em;
	}
	.account_edit_emailCh_text{
		height: 30px;
	}
	.account_edit_addr_button, .account_pic_edit, .account_edit_sending{
		margin:5px;	
		width:70px;
		height:40px;	
		float:left;	
		background-color: #fafafa;
		border:1px solid #b0aeae;
		border-radius: 4px;
	}
	.account_pic_edit{
		width:120px;
		height:30px;
	}
	.account_edit_addr_button:active {
		background-color: #ededed;
	}
	.myPage-account-name{
		font-size: 1em;
	}
	.myPage-accountView-box-title-addr{
		height:100px;
		line-height: 100px;
	}
	.myPage-information-back{
		background-color: rgba(0, 0, 0, 0.3);
		position: fixed;
		width:100%;
		height:100vh;
		z-index:1000;
	}
	.myPage-information-box{
  		position: relative;
 	 	width: 100%;
 	 	height: 100%;
	}
	.myPage-information-popup{
		position: absolute;
		top: 50%;
		left: 50%;
		transform: translate(-50%, -50%);
		background-color: #ffffff;
		box-shadow: 0 2px 7px rgba(0, 0, 0, 0.3);
		width: 500px;
		height: 500px;
	}
	.myPage-information-popup{
		padding:10px;
		border-radius: 10px;
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
						
						<div class="myPage-accountView-main">
							<div class="myPage-accountView-picther">
								<img src="${vo.member_img }">
							</div>
							<ul class="myPage-accountView-ul">
								<li>
									<button class="account_pic_edit">프로필 사진수정</button>
								</li>
							</ul>
							
							<form method="post" action="MyinformationEdit" >
							<ul class="myPage-accountView-info-list">
								<li class="myPage-accountView-info">
								<span class="myPage-accountView-box-title">이름</span>
									<span class="myPage-accountView-box">
										<span class="account_edit_input-outline">
											<span class="account_edit_input-box">
												<input type="text" id="member_name" name="member_name" value="${vo.member_name }" onclick="inputClick(this)" class="account_edit_input" placeholder="이름" autocomplete=”off” maxlength="7"readonly/>				
											</span>
										</span>
									</span>
								</li>
								<li class="myPage-accountView-info">
								<span class="myPage-accountView-box-title">전화번호</span>
									<span class="myPage-accountView-box">
										<span class="account_edit_input-outline">
											<span class="account_edit_input-box">
												<input type="text" id="member_tel" name="member_tel" value="${vo.member_tel}" onclick="inputClick(this)" class="account_edit_input" placeholder="-를 포함하여 입력해주세요" autocomplete=”off” maxlength="13" readonly/>				
											</span>
												<label id="account_edit_tel_text"></label>	
										</span>
									</span>
								</li>
								
								<li class="myPage-accountView-info">
								<span class="myPage-accountView-box-title">이메일</span>
									<span class="myPage-accountView-box-email">
										<span class="account_edit_input-outline" id="account_edit_input_email">
											<span class="account_edit_input-box">
												<input type="text" id="member_email_id" name="member_email_id" class="account_edit_input_email"  onclick="inputClick(this)" placeholder="이메일" autocomplete=”off” maxlength="15" readonly/>
											</span>
										</span>
										<span class="member_email_AtSign">@</span>	
										<span class="account_edit_input-outline" id="account_edit_input_email_addr">
												<span class="account_edit_input-box">
													<input type="text" id="member_email_addr" name="member_email_addr" class="account_edit_input_email" onclick="inputClick(this)" placeholder="직접입력" autocomplete=”off” maxlength="12" readonly/>
												</span>
										</span>
										<label id="account_edit_emailCh_text"></label>	
									</span>
								</li>
								<li class="myPage-accountView-info">
								<span class="myPage-accountView-box-title-addr">주소</span>
									<span class="myPage-accountView-box-addr">
										<span class="account_edit_input-outline">
											<span class="account_edit_input-box-addr">
												<input type="text" id="member_addr_Data" class="account_edit_input" value="${vo.addr1}"  onclick="daumPostcode()" placeholder="주소검색" readonly/>				
											</span>
										</span>
									</span>
									<span class="myPage-accountView-box-infoAddr">
										<span class="account_edit_input-outline">
											<span class="account_edit_input-box-addr">
												<input type="text" id="member_addr" name="addr2" value="${vo.addr2}" class="account_edit_input" onclick="inputClick(this)"  placeholder="상세주소"  autocomplete=”off” maxlength="30" readonly/>				
											</span>
										</span>
									</span>
									<input type="button" class="account_edit_addr_button" value="주소검색" onclick="daumPostcode()" />
									<input type="hidden" id="member_email" name="member_email" value="${vo.member_email }"/>
									<input type="hidden" id="account_post_no" name="post_no" value="${vo.post_no }"/>	
									<input type="hidden" id="account_addr1" name="addr1" value="${vo.addr1 }"/>
								</li>
							</ul>
							<input type="submit" class="account_edit_sending" value="수정완료"/>
							</form>	
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<%@ include file="myPageBottom.jspf" %>