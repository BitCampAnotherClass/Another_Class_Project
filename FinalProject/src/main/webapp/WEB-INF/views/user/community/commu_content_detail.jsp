<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
	.main-ah3{
	margin:65px 30px 30px;
	text-align:left;
	color:#333;
	font-size: 30px;
	float:left;
}
	.swiper {
		width: 100%;
	}
	
	.swiper-slide {
		text-align: center;
		font-size: 18px;
		background: #eee;
		/* Center slide text vertically */
		display: -webkit-box;
		display: -ms-flexbox;
		display: -webkit-flex;
		display: flex;
		-webkit-box-pack: center;
		-ms-flex-pack: center;
		-webkit-justify-content: center;
		justify-content: center;
		-webkit-box-align: center;
		-ms-flex-align: center;
		-webkit-align-items: center;
		align-items: center;
	}
	
	.swiper-slide img {
		display: block;
		width: 100%;
		height: 100%;
		object-fit: cover;
	}
	
	.swiper {
		margin-left: auto;
		margin-right: auto;
	}
.main-review-text{
	max-height:100px;
	min-height:100px;
	font-size:14px;
	color:#555;
	line-height:1.5;
	text-align:left;
	white-space: normal;
	overflow:hidden;
	text-overflow:ellipsis;
	
	word-break: break-all;
	word-wrap: break-word;
	display: -webkit-box; 
	-webkit-line-clamp: 5; 
	-webkit-box-orient: vertical;
}
.main-review-content{
	padding:14px 16px 18px;
	color:#f5f5f5;
}
.search-bbar{
	float:right;
	margin : 65px 30px 30px 0;
}
.a{
	width:100%;
	height:100px;

}
.creator-home{
	float:right;
	margin : 65px 30px 30px 0;
	background-color: #FF385C;

}
</style>
<div class="main-review-wrap">
	<section class="main-review inner-lg">
	<h3 class="main-h3 text-h3">커뮤니티</h3>
				<div class="swiper classSwiper3">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><a href="#">
							<div class="main-review-img">
								<img src="/another/img/test/02.jpg"/>
							</div>
				
							<div class="main-review-content">
										<div class="main-review-user">
									<div class="main-review-user-img">
										<img src="/another/img/test/creator_01.PNG"/>
									</div>
									<div class="main-review-user-info">USERIDUSERID</div>
								</div>
								<div class="main-review-text">
									카드 지갑 사진
								</div>
				
							</div>
						</a></div>
			</section>
		</div>
						