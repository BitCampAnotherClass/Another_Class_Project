<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@ include file="myPageTop.jspf" %>

<link href="<%=request.getContextPath()%>/css/user/review.css" rel="stylesheet" type="text/css"/>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

<div id="reviewPageTitle"><span class="h1style">나의후기</span></div>

<section class="page-wrap">
		
	<div class="review-tab">
		<div class="review-write-tab">
			작성 가능한 후기
		</div>
		<div class="all-review-tab">
			지난 후기
		</div>
	</div>
	<div class="review-wrap">
		<div class="review-top">
			베스트순 | 최신순 | 사진리뷰 | 별점
		</div>
		<div class="review-list">
			<ul>
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
								미션과 강의만 꾸준히 보고 배우면서 노력하다보면 제가 원하는 캐릭터들의 맛을 살릴 수 
								있을거 같아요 선생님의 열정 넘치시는 연기와 몰입도로 너무 재밌게 배우고 있습니다 
								언젠가 <br/>
								제가 연기한 캐릭터 목소리를 들으실 날이 오겠죠?ㅎㅎ<br/><br/>
								미션과 강의만 꾸준히 보고 배우면서 노력하다보면 제가 원하는 <br/>
								캐릭터들의 맛을 살릴 수 
								있을거 같아요 선생님의 열정 넘치시는 연기와 몰입도로 너무 재밌게 배우고 있습니다 
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
				
				<li class="my-review-content">
					<div class="user-review">
						<div class="review-info">
							<div class="user-img"><img src="<%=request.getContextPath()%>/img/test/creator_01.PNG"/></div>
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
					</div>
				</li>
				
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
								있을거 같아요 
							</div>
							<div class="review-img">
								<img src="<%=request.getContextPath()%>/img/test/02.jpg"/>
							</div>
						</div>
					</div>
				</li>
				
				<li class="my-review-content">
					<div class="user-review">
						<div class="review-info">
							<div class="user-img"><img src="<%=request.getContextPath()%>/img/test/creator_01.PNG"/></div>
							<div class="user-review-info">
								<p>USERIDUSERIDUSER</p>
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
							<div class="review-img">
								<img src="<%=request.getContextPath()%>/img/test/02.jpg"/>
							</div>
						</div>
					</div>
				</li>
				
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
								있을거 같아요 선생님의 열정 넘치시는 연기와 몰입도로 너무 재밌게 배우고 있습니다 
								언젠가 제가 연기한 캐릭터 목소리를 들으실 날이 오겠죠?ㅎㅎ
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div> <!-- review-list -->
		
		<div class="review-paging">
			<ul>
				<li class="page-num"><a href="#">◀</a></li>
				<li class="page-num"><a href="#">1</a></li>
				<li class="page-num"><a href="#">2</a></li>
				<li class="page-num"><a href="#">3</a></li>
				<li class="page-num"><a href="#">4</a></li>
				<li class="page-num"><a href="#">5</a></li>
				<li class="page-num"><a href="#">▶</a></li>
			</ul>
		</div>
	</div>
	
	<%@ include file="review_write.jspf" %>
	
</section>

<%@ include file="myPageBottom.jspf" %>