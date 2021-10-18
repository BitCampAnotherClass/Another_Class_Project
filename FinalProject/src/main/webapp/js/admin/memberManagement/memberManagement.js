$(function(){
		var url="MemberMangement/userAccountList";
		var num;
		
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
						board +='<li class="userMg-chart-boardlist"><input type="checkbox" id="allcheck"/></li>';
						board +='<li class="userMg-chart-boardlist" id="userMg-chart-id'+idx+'">'+vo.member_id+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_name+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_email+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.member_tel+'</li>';
						board +='<li class="userMg-chart-boardlist">'+vo.signupdate+'</li>';
						board +='<li class="userMg-chart-boardlist">'+idx+1+'</li>';
						board +='<li class="userMg-chart-boardlist">';
						board +='<input type="button" value="상세 정보" id="account_information_btn"/>';
						board +='<input type="hidden" value="'+vo.member_id+'" class="userMg-chart-id"/>';
						board +='<input type="button" value="삭제" class="userMg-account-del" />';
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
						if(i>=3){
						console.log('출력');
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
			var n;
			for(n=0; n<=num; n++){
				var memberId = $('#userMg-chart-id'+n).text();
				console.log(memberId);
			}
			// 회원 상세정보 버튼 클릭시 출력되는 창
			var infoNum;
			var member_information = '';
			member_information += '<div class="userMg-information-back">';
			member_information += '<div class="userMg-information-box">';
			member_information += '<div class="userMg-information-popup">';
			member_information += '<h2 class="userMg-info-title">회원 상세정보</h2>';
			member_information += '<input type="button" value="X" class="userMg-info-closeButton" />';
			member_information += '<ul>';
			member_information += '<input type="text" class="account_input" />';
			member_information += memberId;
			
			member_information += '</ul>';
			member_information += '</div>';
			member_information += '</div>';
			member_information += '</div>';
			$('#contents-wrap').before(member_information);
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