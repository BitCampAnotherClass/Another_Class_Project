/**
 * 
 */
 /*<script src="js/user/slide.js"></script>*/
 
	$(function(){
	
		//var banner = $('.ban ul li');
		var slide = $('.slide-img li');
	
		fadeTime = 300;
	
	
	
	
		// *** next 버튼 누르면 다음 이미지 보여주기
	
	
		v_size = $('.slide-img li').size();
		vn = 0;    // 현재 표시 이미지
		vnn = 1;   // vnn = vn 오른쪽 옆 이미지
	
		$('.v-next').click(function(){
		    
		   $('.v-img').stop().fadeOut(fadeTime);  //  페이드인아웃으로 이미지 전환하기
		   $('.slide-img li:eq(' + vnn + ')').stop().fadeIn(fadeTime);
		   //banner.removeClass('on');                  //  슬라이드 썸네일 같이 전환하기
		   //$('.ban li:eq(' + vnn + ')').addClass('on');
	
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
		   //banner.removeClass('on');                  //  슬라이드 썸네일 같이 전환하기
		   //$('.ban li:eq(' + vn + ')').addClass('on');
	
		      //console.log('p' + vn);
		      //console.log('pnnn' + vnn);
		  });
	
	
	
	
		// *** 슬라이드 배너 마우스오버 하면 해당 이미지 보여주기
	
	
	
		//var banner = $('.ban ul li');
	
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

