<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<link href="css/user/swiper.min.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css"/>
<link href="css/user/main.css" rel="stylesheet" type="text/css"/>

<script src="js/user/swiper.min.js"></script>



<style>
	#container{
		/*display:none;*/
	}
</style>

<!-- Demo styles -->
<style>
	
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

</style>


<article id="container">
	<section class="main-slide">
		<!-- Swiper -->
		<div class="swiper mainSwiper">
			<div class="swiper-wrapper">
				<div class="swiper-slide v01" style="overflow:hidden;">
					<video src="img/visual/visual_01.mp4" loop autoplay muted></video>
					<div class="main-slide-text">
						<div class="inner-lg">
							<p>클래스가 다른 클래스<br/>
							<span class="text700">another class</span>
							</p>
							<div class="main-slide-btn">
								<a href="#">클래스 둘러보기</a>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper-slide v02" style="overflow:hidden;">
					<video src="img/visual/visual_02.mp4" loop autoplay muted></video>
					<div class="main-slide-text">
						<div class="inner-lg">
							<p>걸어서 15분 거리<br/>
							우리 동네에도 클래스가 있을까?
							</p>
							<div class="main-slide-btn">
								<a href="#">내 주변 클래스 찾기</a>
							</div>
						</div>
					</div>
					<div class="black"></div>
				</div>
				<div class="swiper-slide v03" style="overflow:hidden;">
					<video src="img/visual/visual_03.mp4" loop autoplay muted></video>
					<div class="main-slide-text">
						<div class="inner-lg">
							<p>한 달에 한 번,<br/>하고 싶은 일 하기<br/>
							<span class="text700">#어나더클래스챌린지</span>
							</p>
							<div class="main-slide-btn">
								<a href="#">챌린지 참여하기</a>
							</div>
						</div>
					</div>
					<div class="black"></div>
				</div>
				<div class="swiper-slide v04" style="overflow:hidden;">
					<video src="img/visual/visual_04.mp4" loop autoplay muted></video>
					<div class="main-slide-text">
						<div class="inner-lg">
							<p>배워보고 싶었던 운동도 이제<br/>어나더클래스 하세요.<br/>
							</p>
							<div class="main-slide-btn">
								<a href="#">스포츠·피트니스 클래스</a>
							</div>
						</div>
					</div>
					<div class="black"></div>
				</div>
				
			</div>
			<div id="main-slide-prev" class="swiper-button-prev"></div>
			<div id="main-slide-next" class="swiper-button-next"></div>
			<div class="swiper-pagination"></div>
		</div>
	</section>

	<div class="contents">
		<div class="inner-lg">
			<section class="main-class-best">
				<h3 class="main-h3 text-h3">POPULAR CLASS</h3>
				<!-- Swiper -->
				<div class="swiper classSwiper1">
					<div class="swiper-wrapper">
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
					</div>
					<div id="class1-slide-prev" class="swiper-button-prev"></div>
					<div id="class1-slide-prev" class="swiper-button-next"></div>
					<div class="swiper-pagination"></div>
				</div>
			</section>
			
			 
			<section class="main-class-new">
				<h3 class="main-h3 text-h3">NEW CLASS</h3>
				<div class="swiper classSwiper2">
					<div class="swiper-wrapper">
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
					</div>
					<div id="class1-slide-prev" class="swiper-button-prev"></div>
					<div id="class1-slide-prev" class="swiper-button-next"></div>
					<div class="swiper-pagination"></div>
				</div>
			</section> 
		</div>
		
		<div class="main-review-wrap">
			<section class="main-review inner-lg">
				<h3 class="main-h3 text-h3">BEST REVIEW</h3>
				<div class="swiper classSwiper3">
					<div class="swiper-wrapper">
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
						<div class="swiper-slide"></div>
					</div>
					<div id="class1-slide-prev" class="swiper-button-prev"></div>
					<div id="class1-slide-prev" class="swiper-button-next"></div>
					<div class="swiper-pagination"></div>
				</div>
			</section>
		</div>
		
		<div class="inner-lg">
			<section class="main-creator-list">
				<h3 class="main-h3 text-h3">POPULAR CREATOR</h3>
				<!-- Swiper -->
				<div class="swiper classSwiper4">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<div class="creator-list-img"></div>
						</div>
						<div class="swiper-slide">
							<div class="creator-list-img"></div>
						</div>
						<div class="swiper-slide">
							<div class="creator-list-img"></div>
						</div>
						<div class="swiper-slide">
							<div class="creator-list-img"></div>
						</div>
						<div class="swiper-slide">
							<div class="creator-list-img"></div>
						</div>
						<div class="swiper-slide">
							<div class="creator-list-img"></div>
						</div>
						<div class="swiper-slide">
							<div class="creator-list-img"></div>
						</div>
						<div class="swiper-slide">
							<div class="creator-list-img"></div>
						</div>
					</div>
					<div id="class1-slide-prev" class="swiper-button-prev"></div>
					<div id="class1-slide-prev" class="swiper-button-next"></div>
					<div class="swiper-pagination"></div>
				</div>
			</section>
		</div>
		
	</div>
</article>



<!-- Swiper JS -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script>
      var swiper = new Swiper(".mainSwiper", {
        slidesPerView: 1,
        spaceBetween: 0,
        loop: true,
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
        autoplay: {
            delay: 16000,
            disableOnInteraction: false,
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        effect: 'fade',
        fadeEffect: {
          crossFade: true
        }
      });
      
      
      
      var swiper = new Swiper(".classSwiper1", {
    	  slidesPerView: 4,
          spaceBetween: 30,
          slidesPerGroup: 4,
          loop: true,
          loopFillGroupWithBlank: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          }
        });
      
      var swiper = new Swiper(".classSwiper2", {
    	  slidesPerView: 4,
          spaceBetween: 30,
          slidesPerGroup: 4,
          loop: true,
          loopFillGroupWithBlank: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          }
        });
      
      var swiper = new Swiper(".classSwiper3", {
    	  slidesPerView: 3,
          spaceBetween: 30,
          slidesPerGroup: 1,
          loop: true,
          loopFillGroupWithBlank: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          }
        });
      
      var swiper = new Swiper(".classSwiper4", {
    	  slidesPerView: 5,
          spaceBetween: 30,
          slidesPerGroup: 1,
          loop: true,
          loopFillGroupWithBlank: true,
          pagination: {
            el: ".swiper-pagination",
            clickable: true,
          },
          navigation: {
            nextEl: ".swiper-button-next",
            prevEl: ".swiper-button-prev",
          }
        });

</script>

