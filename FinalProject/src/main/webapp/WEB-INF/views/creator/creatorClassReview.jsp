<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<link href="<%=request.getContextPath()%>/css/user/review.css" rel="stylesheet" type="text/css"/>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<!-- ${vo.class_no } -->

<div> <!-- 후기 -->

	<div class="menutitle">
		<span>후기</span><span class="class-review-cnt"></span>
	</div>
	<!-- 
	<div class="review-chart">
		
	</div>
	 -->
	
	<div class="review-wrap">
		<div class="review-top">
			베스트순 | 최신순 | 사진리뷰 | 별점
		</div>
		<div class="review-list">
			<ul>
			
				<li class="class-review-content">
					<div class="user-review">
						<div class="review-info">
							<div class="user-img"><img src="img/test/creator_01.PNG"/></div>
							<div class="user-review-info">
								<p>USERIDUSERID</p>
								<p>2021.10.05</p>
							</div>
							<div class="star">
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="fas fa-star"></i>
								<i class="far fa-star"></i>
							</div>
						</div>
						<div class="review-content">
							
							<div class="review-text">
								미션과 강의만 꾸준히 보고 배우면서 노력하다보면 제가 원하는 캐릭터들의 맛을 살릴 수 
								있을거 같아요 선생님의 열정 넘치시는 연기와 몰입도로 너무 재밌게 배우고 있습니다 
								언젠가 제가 연기한 캐릭터 목소리를 들으실 날이 오겠죠?ㅎㅎ
							</div>
						</div>
					</div> <!-- //user-review 리뷰 내용 -->
					
					<div class="review-comment-write">
						<div class="comment-info">
							<div class="user-img"><img src="img/test/creator_02.jpg"/></div>
						</div>
						<form id="reviewCommentFrm" method="post" action="<%=request.getContextPath()%>/reviewCommentOk">
							<textarea id="review-reply" name="reply" placeholder="댓글을 입력해주세요."></textarea>
							<input id="review-reply-btn" type="submit" value="등록"/>
						</form>
					</div> <!-- // review-comment-write 댓글 작성 폼 -->
					
					<div class="review-comment-list">
					
						<div class="review-comment">
							<div class="comment-item">
								<div class="comment-info">
									<div class="user-img"><img src="img/test/creator_02.jpg"/></div>
								</div>
								
								<div class="comment-text">
									<span class="user-review-info">creatorID</span>
									감사합니다. 저는 크리에이터입니다. 제 강의를 잘 들어주셔서 감사합니다.
									저는 크리에이터입니다. 제 강의를 잘 들어주셔서 감사합니다.
									저는 크리에이터입니다. 제 강의를 잘 들어주셔서 감사합니다.
									저는 크리에이터입니다. 제 강의를 잘 들어주셔서 감사합니다.
									
								</div>
							</div>
						</div> <!-- //review-comment 댓글 1개 -->
						
						
						<div class="review-comment">
							<div class="comment-item">
								<div class="comment-info">
									<div class="user-img"><img src="img/test/creator_02.jpg"/></div>
								</div>
								
								<div class="comment-text">
									<span class="user-review-info">creatorID</span>
									감사합니다. 저는 크리에이터입니다. 제 강의를 잘 들어주셔서 감사합니다.
									저는 크리에이터입니다. 제 강의를 잘 들어주셔서 감사합니다.
									저는 크리에이터입니다. 제 강의를 잘 들어주셔서 감사합니다.
									저는 크리에이터입니다. 제 강의를 잘 들어주셔서 감사합니다.
									
								</div>
							</div>
							
							<div class="comment-reply">
								<div class="comment-item">
									<div class="comment-info">
										<div class="user-img"><img src="img/test/creator_02.jpg"/></div>
									</div> <!-- 대댓글 프로필 이미지 -->
									
									<div class="reply-text">
										<span class="user-review-info">creatorID</span>
										완전 제 취향이에요 저도 그린벽지인지 페인트인지 정보 부탁 드려도 될까요? 색이 너무 예쁘네요 ㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠㅠ
										
									</div>
								</div> <!-- //comment-reply 대댓글 1개 -->
							</div> <!-- //comment-item 대댓글 목록 영역 -->
							
						</div> <!-- //review-comment 댓글 1개 -->


					</div> <!-- //review-comment-list 댓글 목록 영역 -->
				</li> <!-- 후기 1개 -->
				
			</ul>
		</div> <!-- review-list -->
		<div class="review-paging">
		<!-- 
			<ul>
				<li class="page-num" id="prev-page"><a href="#">◀</a></li>
				<li class="page-num"><a href="#">1</a></li>
				<li class="page-num active"><a href="#">2</a></li>
				<li class="page-num"><a href="#">3</a></li>
				<li class="page-num"><a href="#">4</a></li>
				<li class="page-num"><a href="#">5</a></li>
				<li class="page-num" id="next-page"><a href="#">▶</a></li>
			</ul>
			 -->
		</div>
	</div>
	
</div>




<script type="text/javascript">

$(document).ready(function(){
	
	var now_page=1; // 현재 페이지
	var total_page=1; // 총 페이지 수
	var onePageRecord=5; // 한 페이지당 레코드 수
	var nowPageRecord = onePageRecord; // 현재 페이지 레코드 수
	
	var userId = '${userId}'; // 로그인 회원 아이디
	var userImg = '${userImg}'; // 로그인 회원 이미지
	var class_no = 1000;//'${vo.class_no }'; // 해당 클래스 번호 임시./.......,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,
	
	// 페이지 세팅 + 리뷰 목록 불러오기
	function setClassReviewPage(){
		// 클래스 후기 페이징 가져오기
		var pageUrl = '<%=request.getContextPath()%>/classReviewPage';
		var params = {'nowPage': now_page, 'class_no': class_no};
		$.ajax({
			url: pageUrl,
			data: params,
			success: function(result){
				var r = $(result);
				total_page = r[0].totalPage;

				var pageTag = '<ul>';
				pageTag += '<li class="page-num" id="prev-page"><a href="javascript:void(0);">◀</a></li>';
				for(var i=r[0].groupStartPage; i<=(r[0].groupStartPage + r[0].oneGroupPage-1); i++){
					if(i <= r[0].totalPage){
						pageTag += '<li class="page-num';
						if(now_page==i){ // 현재 페이지 active 클래스 주기
							pageTag += ' active';
						}
						pageTag += '"><a href="javascript:void(0);">' + i + '</a></li>';
					} //if
				} // for
				pageTag += '<li class="page-num" id="next-page"><a href="javascript:void(0);">▶</a></li></ul>';
				
				$('.review-paging').html(pageTag);
				$('.class-review-cnt').text(r[0].totalRecord);
				
				// 마지막 페이지일 때 남은 레코드 개수만큼만 보이게 설정
				if(r[0].totalPage==r[0].nowPage && r[0].totalRecord % r[0].oneGroupPage != 0){
					nowPageRecord = r[0].totalRecord % r[0].oneGroupPage;
				} else{
					nowPageRecord = onePageRecord;
				}
				
				
				// 클래스 후기 목록 가져오기
				var url = '<%=request.getContextPath()%>/classReviewList';
				var data = {'nowPage': now_page, 'nowPageRecord':nowPageRecord, 'class_no': class_no };
				$.ajax({
					url: url,
					data: data,
					success: function(result2){
						var rr = $(result2);
						console.log(rr);
						var tag = '';
						$('.review-list > ul').html('');
						rr.each(function(idx, rvo){
							tag = `<li class="class-review-content">
							<div class="user-review">
							<div class="review-info">
								<div class="user-img"><img src="` + rvo.member_img + `"/></div>
								<div class="user-review-info">
									<p>` + rvo.member_id + `</p>
									<p>` + rvo.writedate + `</p>
								</div>
								<div class="star">
									<div class="back-star">
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
									</div>
									<div class="front-star" style="width:` + (rvo.star/5) * 108 + `px">
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
									</div>
								</div>
							</div>
							<div class="review-content">
								
								<div class="review-text">
									` + rvo.content + `
								</div>
							</div>
						</div> <!-- //user-review 리뷰 내용 -->
						
						<div class="review-comment-write">
							<div class="comment-info">
								<div class="user-img"><img src="` + userImg + `"/></div>
							</div>
							<form id="reviewCommentFrm" method="post" action="<%=request.getContextPath()%>/reviewCommentOk">
								<textarea id="review-reply" name="reply" placeholder="댓글을 입력해주세요."></textarea>
								<input id="review-reply-btn" type="submit" value="등록"/>
							</form>
						</div> <!-- // review-comment-write 댓글 작성 폼 -->
					</li>`;
							
							$('.review-list > ul').append(tag);
							
							if($('.class-review-content').eq(idx).children().children().children('.review-text').height() > 120){
								var more = `<div class="more-btn"><input type="button" value="더 보기" /></div>`;
							}
							$('.class-review-content').eq(idx).children('.user-review').append(more);
							
						}); // each
						
					}, error: function(e){
						console.log('클래스 후기 불러오기 에러');
					}
				}); // ajax 나의 후기 목록
				
				
				
			}, error: function(e){
				console.log('클래스 후기 페이지 불러오기 에러');
			}
		}); // ajax 나의 후기 페이징
	
	}

	
	setClassReviewPage(); // 페이지 세팅 + 리뷰 목록 불러오기
	
	// 페이지 번호 클릭 이벤트
	$(document).on('click','.page-num > a', function(e){
	
		if($(this).parent().attr('id')=='prev-page'){
			if(now_page>1){
				now_page--;
			} else{
				return false;
			}
		} else if($(this).parent().attr('id')=='next-page'){
			if(now_page < total_page){
				now_page++;
			} else{
				return false;
			}
		} else{
			now_page = parseInt($(this).text());
		}
		setClassReviewPage(); // 페이지 세팅 + 리뷰 목록 불러오기
	});
	
	
	
	$(document).on('click', '.more-btn > input', function(){
		if($(this).val()=='더 보기'){
			$(this).parent().prev().children('.review-text').css({'max-height': '1000px', 'display': 'block', 'overflow': 'visible', 'text-overflow': 'inherit'});
			$(this).val('접기');
		} else{
			$(this).parent().prev().children('.review-text').css({'max-height': '125px', 'display': '-webkit-box', 'overflow': 'hidden', 'text-overflow': 'ellipsis'});
			$(this).val('더 보기');
		}
		return false;
	});
	
	
});





</script>


