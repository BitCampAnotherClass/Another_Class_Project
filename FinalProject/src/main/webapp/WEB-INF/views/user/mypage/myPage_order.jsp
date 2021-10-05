<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>

	
	/*타이틀+리스트*/
	.orderDiv{width:100%;height:auto;margin-top:80px;border:1px solid red;}
	/*주문내역 타이틀*/
	.orderListTitle{margin:0 auto;width:100%; height:50px; line-height:50px;margin-bottom:20px;
					padding-left:20px;border-bottom:2px solid black;}
	/*주문내역 리스트*/
	.orderList{width:100%;text-align:center; border:1px solid gray;overflow:auto;} /*ul높이ㅠㅠ*/
	.orderList li{float:left;width:9.5%;border-bottom:1px solid gray;}	
	.orderList li:nth-child(7n+4){width:36%; white-space:nowrap;overflow:hidden;text-overflow: ellipsis;}/*상품정보*/
	.orderList li:nth-child(7n+1){width:3%}/*체크박스*/
	.orderList li:nth-child(7n+3){width:18%}/*이미지*/
	.orderList li:nth-child(7n+2){width:14%}/*주문번호*/
	/*리스트 버튼 */
	.orderListBtnDiv{width:100%;float:right;margin-top:20px;display: flex;justify-content: flex-end;}
	.oBtn{width:150px;font-size:1.2em;background-color:#464646;color:white;border:0;outline:0;padding-top:5px;padding-bottom:5px;}	
	.oBtn:hover {background-color:#ff385c;} /*color:#ff385c #FFA500*/
	#refundBtn{margin-left:30px;}
	
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
		<ul id="reserveList" class="orderList">
				<li><input type="checkbox" id="allchk"></li>
				<li>주문번호</li>
				<li>이미지</li>
				<li>상품정보</li>
				<li>주문일자</li>
				<li>상품금액</li>
				<li>주문상태</li>					
		</ul>
	</div>
	<div class="orderListBtnDiv"><input type="button" value="취소신청" id="cancelBtn" class="oBtn"/><input type="button" value="환불신청" id="refundBtn"  class="oBtn"/></div><!-- 버튼 -->
	
	<!-- 수강완료 -->
	<div class="orderDiv">
		<span id="finishListTitle" class="orderListTitle h3style">수강완료</span>	
		<ul id="finishList" class="orderList">
			<li><input type="checkbox" id="allchk2"></li>
			<li>주문번호</li>
			<li>이미지</li>
			<li>상품정보</li>
			<li>주문일자</li>
			<li>상품금액</li>
			<li>주문상태</li>
		</ul>
	</div>
	<div class="orderListBtnDiv"><input type="button" value="후기작성" id="reviewBtn" class="oBtn"/></div>
	
	<!-- 취소,환불 -->
	<div class="orderDiv">
		<span id="cancleRefund" class="orderListTitle h3style">취소/환불내역</span>	
		<ul id="cancleRefund" class="orderList">
			<li><input type="checkbox" id="allchk3"></li>
			<li>주문번호</li>
			<li>이미지</li>
			<li>상품정보</li>
			<li>주문일자</li>
			<li>상품금액</li>
			<li>주문상태</li>
		</ul>
	</div>

<%@ include file="myPageBottom.jspf" %>