<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
	

	#classOptionListContainter{width:1200px;height:100%;margin:0 auto;} /*모든걸 감싸고 있는 div*/
	
	#classOptionListSearchDiv{width:100%;margin-bottom:20px;}/*클래스옵션별 리스트 검색*/
	#classOptionListSubmit{padding:3px 7px 3px 7px;background-color:white;color:#333;border:1px solid #333;}
	
	#classOptionListDiv{width:100%;height:auto;overflow:auto;} /*옵션리스트 목록Div*/
	
	.classOptionListUl{width:100%;height:auto;overflow:auto;}/*옵션리스트 목록Ul*/	
	.classOptionListUl>li{width:100%;overflow:auto;padding:10px 0 10px 0;}
	
	/*옵션리스트 타이틀*/	
	#classOptionListFirstLi{border-bottom:2px solid #666;height:22px;} 
	#classOptionListFirstLi>span{display:block;float:left;}/*옵션리스트 타이틀*/
	#classOptionListFirstLi>span:nth-child(1){width:10%;text-align:center;}
	#classOptionListFirstLi>span:nth-child(2){width:60%;text-align:center;}
	#classOptionListFirstLi>span:nth-child(3){width:15%;text-align:center;}
	#classOptionListFirstLi>span:nth-child(4){width:15%;text-align:center;}
	/*옵션리스트 리스트*/	
	.classOptionListUl2{width:100%;height:auto;}/*옵션리스트 목록Ul*/	
	.classOptionListUl2>li{width:100%;height:150px;padding:15px 0 15px 0;border-bottom:1px solid #ddd;}
	.classOptionListUl2>li>span{display:block;height:100%;float:left;}
	.classOptionListUl2>li>span:nth-child(4n+1){width:10%;text-align:center;line-height:150px;}/*클래스번호*/
	.classOptionListUl2>li>span:nth-child(4n+2){width:60%;}/*클래스정보 : 이미지+클래스상세정보*/
	.classOptionListUl2>li>span:nth-child(4n+2)>span{float:left;height:100%;}
	.classOptionListUl2>li>span:nth-child(4n+2)>span:nth-child(1){width:40%;height:100%;}/*클래스이미지*/
	.classOptionListUl2>li>span:nth-child(4n+2)>span:nth-child(1)>img{width:90%;height:100%;object-fit:fill;text-align:center;}
	.classOptionListUl2>li>span:nth-child(4n+2)>span:nth-child(2){width:60%;height:100%;}/*클래스상세정보*/
	.classOptionListUl2>li>span:nth-child(4n+2)>span:nth-child(2)>span{display:block;width:100%;}
	.classOptionListUl2>li>span:nth-child(4n+2)>span:nth-child(2)>span:nth-child(1){margin:10px 0 35px 0;font-size:1.1rem;font-weight:bold;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}/*클래스명*/
	.classOptionListUl2>li>span:nth-child(4n+2)>span:nth-child(2)>span:nth-child(2){margin-bottom:5px;color:#666;}
	.classOptionListUl2>li>span:nth-child(4n+2)>span:nth-child(2)>span:nth-child(3){margin-bottom:5px;color:#666;}
	.classOptionListUl2>li>span:nth-child(4n+3){width:15%;text-align:center;line-height:150px;font-size:1.1rem;}
	.classOptionListUl2>li>span:nth-child(4n+4){width:15%;text-align:center;height:100%;}
	.classOptionListUl2>li>span:nth-child(4n+4)>span{display:block;width:90%;border:0.7px solid #666;margin-top:55px;padding:5px;}


	.classOptionListUl2 a:link, a:visited{text-decoration:none; color:#333;}	
	.classOptionListUl2 a:hover{color:#ff385c;}
</style>
<script>
	$(function(){
		$('#classOptionListSubmit').on({
			mouseenter:function(){
				//마우스오버가 발생하면 실행할 실행문
				$(this).css('color','#ff385c');
			},
			mouseleave:function(){
				$(this).css('color','#333');
			}			
		});
	});
</script>

<div id="classOptionListContainter">
	
	<div id="classOptionListSearchDiv"><!-- 클래스번호검생창 -->
		<form method="get" id="classOptionListSearchFrm" action="#">
			
			<select name="classOptionListSearchKey">
				<option value="className">클래스명</option>
				<option value="classNum">클래스번호</option>
			</select>		
		
			 <input type="text" name="classOptionListSearchWord" id="classOptionListSearchWord"/>  		    
  		     <input type="submit" value="Search" id="classOptionListSubmit"/>
  		     
		</form>
	</div>
	
	<div id="classOptionListDiv"><!-- 검색한 리스트 목록 -->
		<ul class="classOptionListUl">	<!-- 리스트타이틀 -->		
			<li id="classOptionListFirstLi">
				<span>클래스번호</span>
				<span>클래스명</span>
				<span>진행상황</span>
				<span>선택</span>
			</li>
		</ul>
		
		<span style="display:block;visivillity:hidden;height:2px;width:100px;"></span> <!-- 겹쳐서 간격안맞는 부분을 위해 만든 히든디브 -->
		
		<ul class="classOptionListUl2"><!-- 옵션별 리스트 -->			
			
			<li> <!-- ***클래스한줄*** -->
				<span>920022</span><!-- 클래스번호 -->
				<span><!-- 클래스명 + 상세정보-->
					<span><img src="img/jisu/classimg7.png"/></span><!-- 클래스명 -->
					<span><!-- 상세정보 -->
						<span>누구나 손쉽게 따라 하는 재즈피아노 입문 클래스</span>
						<span>옵션 : 2021.09.12 14:00</span>
						<span>총인원 : 10명</span> 
						<span><a href="">신청인원 : 3명</a></span>
					</span>					
				</span>
				<span>진행중</span><!-- 진행상황 -->
				<span><!-- 선택 -->
					<span><a href="">클래스 취소신청</a></span>				
				</span>			
			</li>
			
			<li> <!-- ***클래스한줄*** -->
				<span>920022</span><!-- 클래스번호 -->
				<span><!-- 클래스명 + 상세정보-->
					<span><img src="img/.jisu/classimg7.png"/></span><!-- 클래스명 -->
					<span><!-- 상세정보 -->
						<span>누구나 손쉽게 따라 하는 재즈피아노 입문 클래스</span>
						<span>옵션 : 2021.09.02 14:00</span>
						<span>총인원 : 15명</span>
						<span><a href="">신청인원 : 15명</a></span>
					</span>					
				</span>
				<span>마감</span><!-- 진행상황 -->
				<span><!-- 선택 -->
					<span><a href="">클래스 취소신청</a></span>					
				</span>			
			</li>
			
			<li> <!-- ***클래스한줄*** -->
				<span>721093</span><!-- 클래스번호 -->
				<span><!-- 클래스명 + 상세정보-->
					<span><img src="img/jisu/classimg8.png"/></span><!-- 클래스명 -->
					<span><!-- 상세정보 -->
						<span>재즈피아노 고급 클래스</span>
						<span>옵션 : 2021.09.01 14:00</span>
						<span>총인원 : 10명</span>
						<span><a href="">신청인원 : 10명</a></span>
					</span>					
				</span>
				<span>마감</span><!-- 진행상황 -->
				<span><!-- 선택 -->
					<span><a href="">클래스 취소신청</a></span>					
				</span>			
			</li>
			
			<li> <!-- ***클래스한줄*** -->
				<span>721093</span><!-- 클래스번호 -->
				<span><!-- 클래스명 + 상세정보-->
					<span><img src="img/jisu/classimg8.png"/></span><!-- 클래스명 -->
					<span><!-- 상세정보 -->
						<span>재즈피아노 고급 클래스</span>
						<span>옵션 : 2021.08.31 14:00</span>
						<span>총인원 : 10명</span>
						<span><a href="">신청인원 : 7명</a></span>
					</span>					
				</span>
				<span>마감</span><!-- 진행상황 -->
				<span><!-- 선택 -->
					<span><a href="">클래스 취소신청</a></span>					
				</span>			
			</li>
			
		</ul>
		
	</div>
	


</div>
				



