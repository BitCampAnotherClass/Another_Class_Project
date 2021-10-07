<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<style>	
	html, body, div, ul, ol, li, dl, dt, dd, header, footer, main, article, section, aside, form, input, textarea, button, select, a, p, h1, h2, h3, h4, h5, h6, span, table, th, td{box-sizing:content-box}
		


	.shoppingBagList{width:100%;height:auto;margin-top:80px;margin:0 auto;} /*쇼핑백 리스트를 감싸고있는 제일큰div border:1px solid red;*/
	.shoppingBagList>span:nth-child(1){margin-bottom:20px;margin-top:70px}
	.shoppingBagList{width:100%;height:auto;}
	.shoppingBagList>ul{width:100%;height:auto;}
	
	/*쇼핑백리스트 제목*/
	#shoppingBagListTitle>li{width:10%;height:30px;float:left;border-top:3px solid #333;border-bottom:1px solid #666;padding:10px 0 10px 0;text-align:center;font-size:1.1rem;font-weight:bold;margin-bottom:30px;}	
	#shoppingBagListTitle>li:nth-child(1){width:5%;}
	#shoppingBagListTitle>li:nth-child(2){width:60%;}
	#shoppingBagListTitle>li:nth-child(5){width:15%;}
	
	/*쇼핑백리스트*/
	#shoppingBagListUl{}
	#shoppingBagListUl>li{padding:6px 0 6px 0;height:150px;margin-top:50px;}
	#shoppingBagListUl>li>div{width:10%;height:100%;float:left;text-align:center;border-bottom:1px solid #ddd;}/*height -> 100%? auto?*/
	#shoppingBagListUl>li>div:nth-child(5n+1){width:5%;line-height:150px;}
	#shoppingBagListUl>li>div:nth-child(5n+2){width:60%;} /*이미지+상세정보*/
	#shoppingBagListUl>li>div:nth-child(5n+2)>div{width:100%;height:100%;}
	#shoppingBagListUl>li>div:nth-child(5n+2)>div>div:nth-child(1){width:40%;height:100%;float:left;padding:2px 2px 2px 2px;}
	#shoppingBagListUl>li>div:nth-child(5n+2)>div>div:nth-child(1)>a:nth-child(1){display:block;width:100%;height:100%;}
	#shoppingBagListUl>li>div:nth-child(5n+2)>div>div:nth-child(1) img{width:90%;height:90%;object-fit:cover;text-align:center;}
	#shoppingBagListUl>li>div:nth-child(5n+2)>div>div:nth-child(2){width:60%;padding-left:9px;float:left;text-align:left;}
	#shoppingBagListUl>li>div:nth-child(5n+2)>div>div:nth-child(2)>*{display:block;width:100%;margin-bottom:5px;}
	#shoppingBagListUl>li>div:nth-child(5n+2)>div>div:nth-child(2)>a:nth-child(1){font-size:1.1rem;font-weight:bold;padding-bottom:7px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}/*주문상세내역정보-클래스명*/
	#shoppingBagListUl>li>div:nth-child(5n+2)>div>div:nth-child(2)>span{color:#999;}
	#shoppingBagListUl>li>div:nth-child(5n+3){line-height:150px;}
	#shoppingBagListUl>li>div:nth-child(5n+4){line-height:150px;}
	#shoppingBagListUl>li>div:nth-child(5n+5){width:15%;}
	#shoppingBagListUl>li>div:nth-child(5n+5)>div{width:100%;}
	#shoppingBagListUl>li>div:nth-child(5n+5)>div>a{display:block;width:100%;padding:10px 0 10px 0;text-align:center;}/*버튼*/
	#shoppingBagListUl>li>div:nth-child(5n+5)>div>a span{display:inline-block;width:84px;background-color:#666;padding:5px 10px 5px 10px;text-align:center;color:white;} /*이벤트줘야함 -> 이벤트오버시 글자색바뀌게*/
	
	/* 선택상품 - 삭제 ,주문 */
	#shoppingbasketBtn{width:100%;height:auto;margin:0 auto;text-align:center;margin-top:50px;}
	#shoppingbasketBtn>a{text-align:center;font-size:16px;border:1px solid #333;margin:0 20px 0 20px;padding:5px 10px 5px 10px;}
</style>




	<%@ include file="myPageTop.jspf" %>



	<div id="shoppingbasketPageTitle" class="bigTitle"><h1>장바구니</h1></div><!-- style="border:1px solid red" -->
	
	
	<div  class="shoppingBagList">
		<span class="h3style">장바구니 상품( 2 )</span>		
		
		<ul id="shoppingBagListTitle">
			<li><input type="checkbox" id="allchk"></li>		
			<li>상품정보</li> <!-- 이미지 + 클래스정보 + 옵션:인원?날짜?... -->
			<li>상품금액</li> <!-- 인원?날짜?... -->
			<li>포인트</li>	
			<li>선택</li> <!-- 주문하기,찜하기,삭제 -->				
		</ul>
		
		<ul id="shoppingBagListUl">
			
			<li><!-- 주문한줄 -->
				<div><input type="checkbox"></div><!-- 체크박스 -->				
				<div><!-- 이미지+상품정보 -->	
					<div>							
						<div><a href="#"><img src="img/jisu/classimg5.png"/></a></div><!-- 이미지 -->
						<div><!-- 상품정보 -->
							<a href="#">늘 예쁜 꽃, 디자인을 잘 하면 더 예뻐져요. 쉐이드그린의 감각적인 생화 디자인</a><!-- 클래스명 : -->
							<span><a href="#">마치가든</a></span><!-- 크리에이터명 -->
							<span>옵션날짜 : 2021.09.02 14:00</span>
							<span>인원 : 1명</span>
						</div>
					</div>
				</div>				
				<div>38000원</div><!-- 상품금액 -->				
				<div>3800</div><!-- 포인트 -->				
				<div><!-- 선택 -->
					<div>
						<a href="#"><span>주문하기</span></a>
						<a href="#"><span>찜하기</span></a>	
						<a href="#"><span>삭제  </span></a>		
					</div>
				</div>
			</li>
			
			<li><!-- 주문한줄 -->
				<div><input type="checkbox"></div><!-- 체크박스 -->				
				<div><!-- 이미지+상품정보 -->	
					<div>							
						<div><a href="#"><img src="img/jisu/classimg4.png"/></a></div><!-- 이미지 -->
						<div><!-- 상품정보 -->
							<a href="#">프로서퍼 김지나의 서핑 A to Z</a><!-- 클래스명 : -->
							<span><a href="#">지나서퍼</a></span><!-- 크리에이터명 -->
							<span>옵션날짜 : 2021.09.03 10:30</span>
							<span>인원 : 2명</span>
						</div>
					</div>
				</div>				
				<div>65000원</div><!-- 상품금액 -->				
				<div>6500</div><!-- 포인트 -->				
				<div><!-- 선택 -->
					<div>
						<a href="#"><span>주문하기</span></a>
						<a href="#"><span>찜하기</span></a>	
						<a href="#"><span>삭제  </span></a>		
					</div>
				</div>
			
			</li>
		</ul>
	</div>
	
	<div id="shoppingbasketBtn">		
		<a href="#">선택상품삭제</a>
		<a href="#">선택상품주문하기</a>
	</div>
	
<%@ include file="myPageBottom.jspf" %>