<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	#container{
		/*display:none;*/
	}
</style>



<article id="container">
	<section id="visual">
		<div class="slider">
			<ul class="slide-img">
				<li id="v01" class="v-img">
					<a href="#"><img src="#" alt="" /></a>
				</li>
				<li id="v02" class="v-img">
					<a href="#"><img src="#" alt="" /></a>
				</li>
				<li id="v03" class="v-img">
					<a href="#"><img src="#" alt="" /></a>
				</li>
				<li id="v04" class="v-img">
					<a href="#"><img src="#" alt="" /></a>
				</li>
			</ul>

			<!-- prev / next 버튼 -->
			<div class="v-prev">◀</div>
			<div class="v-next">▶</div>

		</div>
		<!-- slider 

		<div class="ban">
			<ul>
				<li class="ban01 on">
					<p class="r_font">11111</p>
					<p class="b_font">1111111</p>
				</li>
				<li class="ban02">
					<p class="r_font">22222</p>
					<p class="b_font">2222222</p>
				</li>
				<li class="ban03">
					<p class="r_font">33333</p>
					<p class="b_font">3333333</p>
				</li>
				<li class="ban04">
					<p class="r_font">44444</p>
					<p class="b_font">4444444</p>
				</li>
			</ul>
		</div>
		 // ban -->
	</section>
	<section class="contents">
		<div class="inner-lg">
		
		</div>
	</section>
</article>



<script>
	$(function(){
		var slide = $('.slide-img li');
	
		fadeTime = 300;

	
		// *** next 버튼 누르면 다음 이미지 보여주기
	
	
		v_size = $('.slide-img li').size();
		vn = 0;    // 현재 표시 이미지
		vnn = 1;   // vnn = vn 오른쪽 옆 이미지
	
		$('.v-next').click(function(){
		    
		   $('.v-img').stop().fadeOut(fadeTime);  //  페이드인아웃으로 이미지 전환하기
		   $('.slide-img li:eq(' + vnn + ')').stop().fadeIn(fadeTime);
	
		   vn++
		   vnn++
	
		   if(vnn == v_size){
		      vnn = 0;
		   } else if(vn == v_size){
		      vn = 0; 
		   }
		      //console.log('n'+vn);
		  });
	
	
		// *** prev 버튼 누르면 다음 이미지 보여주기
	
		$('.v-prev').click(function(){
		    
		   vn--
		   vnn--
	
		   if(vn < 0){
		      vn = (v_size-1);
		   } else if(vnn < 0){
		      vnn = (v_size-1); 
		   }
		   $('.v-img').stop().fadeOut(fadeTime);  //  페이드인아웃으로 이미지 전환하기
		   $('.slide-img li:eq(' + vn + ')').stop().fadeIn(fadeTime);

		});
	
	
		// *** 슬라이드 배너 마우스오버 하면 해당 이미지 보여주기

	/*
		banner.mouseover(function(){
	
		   vn = $(this).index();     // vn이 현재 마우스오버한 순서 번호로 바뀜
		   vnn = vn+1;
		   if(vnn == v_size){
		      vnn = 0;
		   }
	
		   $('.v-img').stop().fadeOut(fadeTime);   // 슬라이드 이미지 중에 해당 배너만 fadeIn
		   $('.slide-img li:eq(' + vn + ')').stop().fadeIn(fadeTime);
	
		   //banner.removeClass('on');   // 배너 중에 현재 배너에만 on
		   $(this).addClass('on');
	
		   //console.log(vn);
	
		});
	*/
	
	
	
		// *** 자동실행 (오토플레이)
	
		var autoPlay;
		playTime = 8000;
	
	
		autoPlay = setInterval(function(){
		   $('.v-next').trigger('click');
		},playTime);
	
	
		$('.slider, .ban ul').on({
		   // 마우스오버일 때 setInterval(오토) 삭제
		   mouseenter:function(e){
		      clearInterval(autoPlay); // setInterval 삭제
		      autoPlay;
		   },
		   // 마우스아웃일 때 setInterval 다시 실행
		   mouseleave:function(e){
		      autoPlay = setInterval(function(){ 
		      $('.v-next').trigger('click');
		      },playTime);
		   }
	
		});



	});

</script>
