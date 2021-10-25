<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ include file="myPageTop.jspf" %>

<link href="<%=request.getContextPath()%>/css/user/review.css" rel="stylesheet" type="text/css"/>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<div id="reviewPageTitle"><span class="h1style">나의후기</span></div>

<section class="page-wrap">
	<!-- 
	<div class="review-tab">
		<div class="review-write-tab">
			작성 가능한 후기
		</div>
		<div class="all-review-tab">
			지난 후기
		</div>
	</div>
	-->
	<div class="review-wrap">
		<div class="review-top">
			베스트순 | 최신순 | 사진리뷰 | 별점
		</div>
		<div class="review-list">
			<ul>
				<!-- 
				<li class="my-review-content">
					<div class="user-review">
						<div class="review-info">
							<div class="user-img"><img src="<%=request.getContextPath()%>/img/test/creator_01.PNG"/></div>
							<div class="user-review-info">
								<p>USERID</p>
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
								있을거 같아요 선생님의 열정 넘치시는 연기와 몰입도로 너무 <br/>
								재밌게 배우고 있습니다 
								언젠가 제가 연기한 캐릭터 목소리를 들으실 날이 오겠죠?ㅎㅎ<br/>
							</div>
							<div class="review-img">
								<img src="<%=request.getContextPath()%>/img/test/06.jpg"/>
							</div>
						</div>
						<div class="more-btn">
							<a href="#">∨ 더 보기</a>
						</div>
					</div>
				</li>
				-->
			</ul>
		</div> <!-- review-list -->
		
		<div class="review-paging">
			<ul>
				<li class="page-num" id="prev-page"><a href="#">◀</a></li>
				<li class="page-num"><a href="#">1</a></li>
				<li class="page-num active"><a href="#">2</a></li>
				<li class="page-num"><a href="#">3</a></li>
				<li class="page-num"><a href="#">4</a></li>
				<li class="page-num"><a href="#">5</a></li>
				<li class="page-num" id="next-page"><a href="#">▶</a></li>
			</ul>
		</div>
	</div>
	
	
	
</section>

<script type="text/javascript">

$(function(){
	var url = '<%=request.getContextPath()%>/myReview';
	//var params = {'order_no': orderNo };
	$.ajax({
		url: url,
		//data: params,
		success: function(result){
			var r = $(result);
			console.log(r);
			var tag = '';
			r.each(function(idx, vo){
				
				tag = `<li class="my-review-content">
							<div class="user-review">
							<div class="review-info">
							<div class="user-img"><img src="` + vo.member_img + `"/></div>
								<div class="user-review-info">
									<p>` + vo.member_id + `</p>
									<p>` + vo.writedate + `</p>
								</div>
								<div class="star">
									<div class="back-star">
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
										<i class="fas fa-star"></i>
									</div>
									<div class="front-star" style="width:` + (vo.star/5) * 95 + `px">
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
									` + vo.content + `
								</div>`;
								if(vo.img1 != ''){
									tag += `<div class="review-img">
												<img src="` + vo.img1 + `"/>
											</div>`;
								}
						tag += `</div>
							</div>
						</li>`;
					console.log('별점'+vo.star)
				$('.review-list > ul').append(tag);
				if($('.my-review-content').eq(idx).children().children().children('.review-text').height() > 120){
					var more = `<div class="more-btn">
									<input type="button" value="더 보기" />
								</div>`;
				}
				$('.my-review-content').eq(idx).children($('.user-review')).append(more);
				console.log('높이' + $('.my-review-content').eq(idx).children().children().children('.review-text').height());
				
			});
			
		}, error: function(e){
			console.log('나의 후기 불러오기 에러');
		}
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



<%@ include file="myPageBottom.jspf" %>