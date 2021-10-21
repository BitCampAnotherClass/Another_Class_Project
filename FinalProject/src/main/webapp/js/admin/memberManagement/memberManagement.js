$(function(){
		var url="MemberMangement/userAccountList";
		var num;
		
		function replaceAt (indata){
			
			if(indata != null) {
				var telValue1 = indata.substr(10);
				var trans = telValue1.replaceAll(/[0-9|-]/gi,'*');
				var telValue2 = indata.substr(0,10);
				var telOutValue = telValue2+trans;
				indata =  telOutValue;
			}else{
				indata = '없음';
			}
     		return indata;
		}
		
		function checkType(typeData){
			if (typeData != 0){
				typeData = '이용자';
			}else{
				typeData = '강사';
			}
			return typeData;
		}
		
		function userList(){
			var number = $('.paging-number').val();
			var data = {"no":number};
			var test = 'test';
			var board= "";
			$.ajax({
				url : url,
				type : "POST",
				data : data,
				success:function(result){
					var listData = $(result);
					listData.each(function(idx,vo){
						var tel = replaceAt(vo.member_tel);
						var memberType = checkType(vo.type_user);
						board +='<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>';
						board +='<li class="userMg-chart-boardlist" id="userMg-chart-id">'+vo.member_id+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_name+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_email+'</li>';
						board +='<li class="userMg-chart-boardlist">'+tel+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.signupdate+'</li>';
						board +='<li class="userMg-chart-boardlist">'+memberType+'</li>';
						board +='<li class="userMg-chart-boardlist">';
						board +='<input type="button" value="관리메뉴" id="account_information_btn"/>';
						board +='<input type="hidden" value="'+vo.member_id+'" id="userMg-chart-id"/>';
						board +='</li>';
						num = idx;
					});
					$(".userMg-chart-box").append(board);
				},error: function(error){
					console.log(error);
					console.log('AJAX 목록 불러오기 실패');
				}
			});
		}
		
		function btnList(){
			//페이징 버튼 출력
			var btnList = "";
			$.ajax({
				url : 'MemberMangement/btnList'
				, type : 'POST'
				, success:function(res){
					for(var i=1; i<=res; i++){
						btnList +='<input type="button" class="userMg-boardList-btn"';
						if(i>=10){
						btnList +=' style="display:none" ';
						}
						btnList += 'value="'+i+'"/>';
					}
					$('.userMg-boardList-btn-box').html(btnList);
				}
				, error: function(error){
					console.log(error);
					console.log('btn 목록 불러오기 실패');
				}
				
			});
		}
		$(document).on('click','.userMg-boardList-btn',function(){
			// 페이징 하단 버튼 숫자설정
			$('.paging-number').val($(this).val());
			console.log('버튼 숫자 가져오기'+ $(this).val() );
			console.log('페이징 숫자 가져오기'+ $('.paging-number').val() );
			$('.userMg-chart-boardlist:nth-child(n+9)').remove();
			userList();
		});

		$(document).on('click',"#account_information_btn",function(){
			var idData = $(this).next().val();
			var data = {"idData":idData};
			var member_information = '';
			var infoAccount="MemberMangement/AccountInformation";
			$.ajax({
				url : infoAccount,
				type : "POST",
				data : data,
				success:function(result){
					var infor= $(result);
					infor.each(function(idx,vo){
						var tel = replaceAt(vo.member_tel);
						member_information += '<div class="userMg-information-back">';
						member_information += '<div class="userMg-information-box">';
						member_information += '<div class="userMg-information-popup">';
						member_information += '<h2 class="userMg-info-title">'+vo.member_name+' 회원님의 상세정보</h2>';
						member_information += '<input type="button" value="X" class="userMg-info-closeButton" />';
						member_information += '<ul class="userMg-info-popup-ul">';
						member_information += '<li>이름</li>';
						member_information += '<div class="userMg-information-popup-div">';
						member_information += '<li><input type="text" class="userMg-information-popup-input"  value="'+vo.member_name+'" readonly="true"></li>';
						member_information += '</div>';
						member_information += '<li>이메일</li>';
						member_information += '<div class="userMg-information-popup-div">';
						member_information += '<li><input type="text" class="userMg-information-popup-input"  value="'+vo.member_email+'" readonly="true"></li>';
						member_information += '</div>';
						member_information += '<li>전화번호</li>';
						member_information += '<div class="userMg-information-popup-div">';
						member_information += '<li><input type="text" class="userMg-information-popup-input"  value="'+tel+'" readonly="true"></li>';
						member_information += '</div>';
						member_information += '<li>가입날짜</li>';
						member_information += '<div class="userMg-information-popup-div">';
						member_information += '<li><input type="text" class="userMg-information-popup-input-sing"  value="'+vo.signupdate+'" readonly="true"></li>';
						member_information += '</div>';
						member_information += '<li><input type="button" class="userMg-information-button" id="userMg-information-popup-button-one" value="수정 활성화"/></li>';
						member_information += '<li><input type="button" class="userMg-information-button"  id="userMg-information-popup-button-del" value="삭제"/></li>';
						member_information += '<li><input type="button" class="userMg-information-button"  id="userMg-information-popup-button-two" value="수정전송" style="display: none;" /></li>';
						member_information += '</ul>';
						member_information += '</div>';
						member_information += '</div>';
						member_information += '</div>';
					});
						// 회원 상세정보 버튼 클릭시 출력되는 창
						$('#contents-wrap').before(member_information);
				},error: function(error){
					console.log(error);
					console.log('AJAX 목록 불러오기 실패');
				}
				
			});
			
		});
		
		$(document).on('click','#userMg-information-popup-button-one',function(){
			$(this).css('display','none');
			$('#userMg-information-popup-button-two').css('display','block');
			$('.userMg-information-popup-input').removeAttr('readonly');
		});
		
		$(document).on('click','#userMg-information-popup-button-two',function(){
			$(this).css('display','none');
			$('#userMg-information-popup-button-one').css('display','block');
			$('.userMg-information-popup-input').attr('readonly','true');
		});
		
		
		$(document).on('click','.userMg-info-closeButton',function(){
			// 상세정보 닫기
			$('.userMg-information-box').remove();
			$('.userMg-information-back').remove();
			$('.userMg-information-popup').remove();
		});
		
		userList();
		btnList();
	});