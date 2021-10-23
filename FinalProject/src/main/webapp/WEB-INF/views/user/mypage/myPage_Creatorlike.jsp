<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	#likedCreatiorList{width:90%;height:auto;overflow:auto;margin:0 auto;}/*height:auto;display:flex;*//*좋아요크리에이터 리스트 감싸고 있는 div*/	
	.card {
	  display: grid;
	  grid-template-columns: 270px;
	  grid-template-rows: 184px 44px 62px;
	  grid-template-areas: "image" "text" "stats";
	  margin: 15px 14px 15px 14px;
	  border-radius: 18px;
	  background: white;
	  box-shadow: 0 0 4px rgb(0 0 0 / 24%);
	  /*border: 1px solid #f0f0f0; 
	  0 0 8px rgba(0,0,0,0.3);*/
	  
	  float:left;
	  text-align: center;
	}	
	.card-text {
		  /*grid-area: text;
		  margin: 25px;*/
		  white-space:nowrap;overflow:hidden;text-overflow:ellipsis;
	}	
	.card-stats {
	 	grid-area: stats; 
	}
	.card-image {
	  grid-area: image;
	  /*background: url("img1.jpg");*/
	  border-top-left-radius: 15px;
	  border-top-right-radius: 15px;
	  background-size: cover;
	}	
	.card-text label {
	  display: inline-block;
	  font-size:20px;
	  text-align:center;
	  line-height:100%;
	  padding-top:11px;
	  white-space:nowrap;overflow:hidden;text-overflow:ellipsis;
	}
	.card-stats {
	  grid-area: stats; 
	  display: grid;
	  grid-template-columns: 1fr 1fr 1fr;
	  grid-template-rows: 1fr;	
	  border-bottom-left-radius: 15px;
	  border-bottom-right-radius: 15px;
	  background: #FDD7E4; /*#FDD7E4; rgb(255, 7, 110)*/
	}
	.card-stats .stat {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  flex-direction: column;	
	  color: white;
	  padding:10px;
	}
	
</style> 
<script>
	$(()=>{//강사좋아요리스트
		var logid = "${userId}"; // 세션에저장된아이디			
		
		function getLikedListCrea(){
			var lUrl ="/another/LikedListCrea";
			var lParam = {"logid":logid}
			$.ajax({
				url :lUrl ,
				data : lParam ,
				success:function(l){
					var ll = $(l)
	    			var tag =""; 	
					ll.each(function(idx,vo){	
						tag +="<div class='card'>";
						tag +="<div class='card-image'  style='width:248px;height:171px;margin:13px auto 0 auto;'>";
						tag +="<img class='imgbox' style='width:100%;height:100%;object-fit: cover;' src='/another/img/jisu/flower.png'/>";//vo.member_img//border-radius:100%;
						tag +="</div>";
						tag +="<div class='card-text'>";
						tag +="<label style='color:#999;'>"+vo.nick+"</label>"; //강사아이디
						tag +="</div>";
						tag +="<div class='card-stats'>";
						tag +="<div class='stat'>";
						tag +="<div class='heartImg' id='"+vo.creator_like_no+"'><img class='likeimgbox91' style='width:127%;' src='/another/img/jisu/ff385bigcheart.png'/></div>";//좋아요번호
						tag +="</div>";
						tag +="<div class='stat border'>";
						tag +="<div class='value' style='color:#fff;font-weight:bold;font-size:1.1rem;'>좋아요수</div>";//color:white;
						tag +="<div class='type' style='color:#fff;font-weight:bold;font-size:1.1rem;'>"+vo.creatorlikecount+"</div>";//color:white;
						tag +="</div>";
						tag +="<div class='stat'>";
						tag +="<div class='value' style='color:#fff;font-weight:bold;font-size:1.1rem;'>클래스</div>";//color:white;
						tag +="<div class='type' style='color:#fff;font-weight:bold;font-size:1.1rem;'>"+vo.creatorclasscount+"</div>";//color:white;
						tag +="</div></div></div>";
						tag +="<input type='hidden'  value='"+vo.creator_like_no+"'>";//이걸로지울거임						
					});
					$("#likedCreatiorList").html(tag);
				}
			})			
		}
		
		$(document).on('click','.likeimgbox91',function(){					
			var no = $(this).parent().attr('id');
			console.log(no);
			var cUrl ="/another/cancelLikedListCrea";
			var cParam = {"no":no}
			$.ajax({
				url :cUrl ,
				data :  cParam ,
				success:function(c){//c에 int result값이 들어있다			
					getLikedListCrea();//함수리스트 보여줌....				
				}			
			})
			
		});
		//+++++++++++++++++++++마우스오버 아웃이벤트추가해야됨 ++++++++++++++마우스들어가면 빈하트 아니면 꽉찬하트
		$(document).on('mouseenter','.likeimgbox91',function(){					
			
			$(this).attr("src", "/another/img/jisu/ff385bigborderheart.png");
			console.log('들어옴');
		});
		$(document).on('mouseout','.likeimgbox91',function(){					
			
			$(this).attr("src", "/another/img/jisu/ff385bigcheart.png");
			console.log('나감');
		});
		
		getLikedListCrea();//
		
	});
</script>
<%@ include file="myPageTop.jspf" %>

<div id="likedCreatior" class="bigTitle"><span class="h1style">♥ 크리에이터</span></div>	
	<div id="likedCreatiorList">	
	</div>
	
	
<%@ include file="myPageBottom.jspf" %>