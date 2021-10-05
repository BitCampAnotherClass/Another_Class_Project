<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>

	
	/*타이틀+리스트*/
	.orderDiv{width:100%;height:auto;margin-top:80px;}/*border:1px solid red;*/
	
	/*주문내역 타이틀*/
	.orderListTitle{margin:0 auto;width:100%; height:50px; line-height:50px;margin-bottom:20px;
					padding-left:20px;border-bottom:2px solid #333;}
	/*주문내역 리스트*/
	.orderDiv>ul{width:100%;height:auto;}
	.orderDiv>ul>li{width:100%;height:150px;position:flex;padding-top:30px;} /*주문한줄*/
	.orderDiv>ul>li>div{float:left;height:100%;} /*주문이미지+주문내역+주문상태에따른버튼들자리*/
	
	.orderDiv>ul>li>div:nth-child(3n+1){width:20%;}/*이미지*/
	.orderDiv>ul>li>div:nth-child(3n+1) img{width:90%;height:90%;object-fit:cover;text-align:center;}/*주문이미지*/
	.orderDiv>ul>li>div:nth-child(3n+2){width:65%;padding-left:15px;}/*주문상세내역정보*/
	.orderDiv>ul>li>div:nth-child(3n+2)>*{display:block;width:100%;margin-bottom:7px;} 
	.orderDiv>ul>li>div:nth-child(3n+2)>a:nth-child(1){font-size:1.3rem;font-weight:bold;padding-bottom:10px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}/*주문상세내역정보-클래스명*/
	.orderDiv>ul>li>div:nth-child(3n+2)>span{color:#999;}
	.orderDiv>ul>li>div:nth-child(3n+3){width:15%;height:100%;display:flex;align-items:center;}/*각종버튼자리*/
	.orderDiv>ul>li>div:nth-child(3n+3)>div{width:100%;}/*버튼div 안에서 버튼을감싸고있는작은div*/
	.orderDiv>ul>li>div:nth-child(3n+3)>div>a{display:block;width:100%;padding:20px 0 20px 0;text-align:center;}/*버튼*/
	.orderDiv>ul>li>div:nth-child(3n+3)>div>a span{background-color:#666;padding:5px 13px 5px 13px;text-align:center;color:white;} /*이벤트줘야함 -> 이벤트오버시 글자색바뀌게*/
	
	
	
	
	
	/*h초기화 하고 수정되는 요소들*/
	#reserveListTitle,#finishListTitle,#cancleRefund{margin-block-start: 0;}
	
</style>
</head>
<body>
<%@ include file="myPageTop.jspf" %>
	
	<div id="orderPageTitle" class="bigTitle"><span class="h1style">주문조회</span></div>
	
	
	<!-- 예약내역 -->
	<div class="orderDiv">
		<span id="reserveListTitle" class="orderListTitle h3style">주문내역</span>		
		<ul>
			<li>
				<div><!-- 이미지 -->
					<a href="#"><img src="../../img/classimg2.png"/></a><!-- 이미지 -->
				</div>
					
				<div><!-- 구매정보 -->
					<a href="#">프랑스 자수에 펀치니들을 더해요! 수노리의 보송보송 질감이 살아있는 자수</a><!-- 클래스명 : -->
					<!--<span>옵션날짜 : 2021.09.02 14:00</span><!-- 옵션 --> 
					<span>상품금액 : 44000원</span><!-- 상품금액?결제금액? -->
					<span>주문일자 : 2021.08.29</span><!-- 주문일자 -->
					<span>진행상태 : 주문완료</span>
				</div>
					
				<div><!-- 환불취소버튼 -->
					<div>
						<a href="#"><span>취소신청</span></a>
						<a href="#"><span>환불신청</span></a>		
					</div>
				</div>
			</li>
		</ul>
	</div>
	
	
	<!-- 수강완료 -->
	<div class="orderDiv">
		<span id="finishListTitle" class="orderListTitle h3style">수강완료</span>	
		<ul>
			<li>
				<div><!-- 이미지 -->
					<a href="#"><img src="../../img/classimg6.png"/></a><!-- 이미지 -->
				</div>
					
				<div><!-- 구매정보 -->
					<a href="#">베이킹 초보자를 위한 레트로 빈티지 케이크 - 동화 속 한순간을 담은 홈카페 만들기</a><!-- 클래스명 : -->
					<!--<span>옵션날짜 : 2021.09.02 14:00</span><!-- 옵션 --> 
					<span>상품금액 : 44000원</span><!-- 상품금액?결제금액? -->
					<span>주문일자 : 2021.06.15</span><!-- 주문일자 -->
					<span>진행상태 : 결제완료</span>
				</div>
					
				<div><!-- 환불취소버튼 -->
					<div>
						<a href="#"><span>후기작성</span></a>							
					</div>
				</div>
			</li>
			
			<li>
				<div><!-- 이미지 -->
					<a href="#"><img src="../../img/classimg5.png"/></a><!-- 이미지 -->
				</div>
					
				<div><!-- 구매정보 -->
					<a href="#">늘 예쁜 꽃, 디자인을 잘 하면 더 예뻐져요. 쉐이드그린의 감각적인 생화 디자인</a><!-- 클래스명 : -->
					<!--<span>옵션날짜 : 2021.09.02 14:00</span><!-- 옵션 --> 
					<span>상품금액 : 44000원</span><!-- 상품금액?결제금액? -->
					<span>주문일자 : 2021.05.19</span><!-- 주문일자 -->
					<span>진행상태 : 결제완료</span>
				</div>
					
				<div><!-- 환불취소버튼 -->
					<div>
						<a href="#"><span>후기보기</span></a>							
					</div>
				</div>
			</li>
		</ul>
	</div>
	
	
	<!-- 취소,환불 -->
	<div class="orderDiv">
		<span id="cancleRefund" class="orderListTitle h3style">취소/환불내역</span>	
		<ul>
			<li>
				<div><!-- 이미지 -->
					<a href="#"><img src="../../img/classimg7.png"/></a><!-- 이미지 -->
				</div>
					
				<div><!-- 구매정보 -->
					<a href="#">누구나 손쉽게 따라 하는 재즈피아노 입문 클래스</a><!-- 클래스명 : -->
					<!--<span>옵션날짜 : 2021.09.02 14:00</span><!-- 옵션 --> 
					<span>상품금액 : 44000원</span><!-- 상품금액?결제금액? -->
					<span>주문일자 : 2021.08.21</span><!-- 주문일자 -->
					<span>진행상태 : 취소완료</span>
				</div>
					
				<div><!-- 환불취소버튼 -->
					<div style="visibility:hidden;">
						
						<a href="#"><span>XXX</span></a>		
					</div>
				</div>
			</li>
			
			<li>
				<div><!-- 이미지 -->
					<a href="#"><img src="../../img/classimg4.png"/></a><!-- 이미지 -->
				</div>
					
				<div><!-- 구매정보 -->
					<a href="#">프로서퍼 김지나의 서핑 A to Z</a><!-- 클래스명 : -->
					<!--<span>옵션날짜 : 2021.09.02 14:00</span><!-- 옵션 --> 
					<span>상품금액 : 65000원</span><!-- 상품금액?결제금액? -->
					<span>주문일자 : 2021.05.04</span><!-- 주문일자 -->
					<span>진행상태 : 환불완료</span>
				</div>
					
				<div><!-- 환불취소버튼 -->
					<div style="visibility:hidden;">
						
						<a href="#"><span>XXX</span></a>		
					</div>
				</div>
			</li>
		</ul>
	</div>

<%@ include file="myPageBottom.jspf" %>