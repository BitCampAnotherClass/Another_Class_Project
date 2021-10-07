<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<style>
	html, body, div, ul, ol, li, dl, dt, dd, header, footer, main, article, section, aside, form, input, textarea, button, select, a, p, h1, h2, h3, h4, h5, h6, span, table, th, td{box-sizing:content-box}
	
	
	
	
	#payPageContainer{width:1200px;height:auto;margin:0 auto;display:flex;}/*모든걸감싸고있는 div*/
	
	#leftdiv{width:900px;margin:0;}/*왼쪽영역*/
	#leftdiv>div{width:100%;height:auto;margin-top:80px;} /*쌓여있는 항목div들*/
	
	#payPageTitle{width: 100%;text-align: center;margin-top: 90px;border-bottom: 1px solid black;padding-bottom: 20px;}
    #payPageTitle>span{display:block;font-size:32px;margin-block-start: 0.9rem;margin-block-end:0.9rem; margin-inline-start:0px;
    		margin-inline-end:0px;font-weight: bold;}
   
   .secondTitleD{margin: 0 auto;font-size:20px;height:50px;line-height:50px;}
	
	/*주문자정보*/
	#paymemberinfo>div{padding:15px 0 15px 0;width:100%;height:auto;overflow:auto;}
	#paymemberinfo>div{border-bottom:1px solid #ddd;}
	#paymemberinfo>div:nth-child(1){border-bottom:2px solid #666;padding:0;}
	#paymemberinfo>div>span{display:block;height:auto;float:left;}
	#paymemberinfo>div>span:nth-child(1){width:30%;padding-left:25px;}
	#paymemberinfo>div>span:nth-child(2){width:65%;}
	
	/*주문상품*/
	#payclassinfo>div{padding:15px 0 15px 0;width:100%;height:auto;overflow:auto;border-bottom:1px solid #ddd;}
	#payclassinfo>div:nth-child(1){border-bottom:2px solid #666;padding:0;}
	#payclassinfo>div:nth-child(2)>span{display:block;float:left;width:10%;text-align:center;}	
	#payclassinfo>div:nth-child(2)>span:nth-child(1){width:70%;text-align:center;}
	
	.payclassinfoorder{width:100%;height:150px;}/*주문한줄*/
	.payclassinfoorder>div{float:left;width:10%;text-align:center;height:100%;}	
	.orderrest{line-height:150px;color:#666;}
	.payclassinfoorder>div:nth-child(1){width:70%;text-align:center;display:flex;}/*이미지+제목(클래스명+강사명)*/
	.payclassinfoorder>div:nth-child(1)>div:nth-child(1){width:35%;height:100%;}/*이미지*/
	.payclassinfoorder>div:nth-child(1)>div:nth-child(1)>img{width:100%;height:100%;}
	
	.payclassinfoorder>div:nth-child(1)>div:nth-child(2){width:65%;padding-left:10px;text-align:left;}/*제목(클래스명+강사명)*/
	.payclassinfoorder>div:nth-child(1)>div:nth-child(2)>div:nth-child(1){width:100%;height:auto;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;font-weight:bold;}/*클래스명*/
	.payclassinfoorder>div:nth-child(1)>div:nth-child(2)>div:nth-child(2){width:100%;height:auto;margin-top:15px;font-size:0.9rem;color:#999;}/*크레에이터명*/
	.payclassinfoorder>div:nth-child(1)>div:nth-child(2)>div:nth-child(3){width:100%;height:auto;margin-top:15px;font-size:0.9rem;color:#999;}/*선택한 옵션날짜*/
		
	/*할인받기*/	
	#paydiscount>div{padding:15px 0 15px 0;width:100%;height:auto;overflow:auto;}
	#paydiscount>div{border-bottom:1px solid #ddd;}
	#paydiscount>div:nth-child(1){border-bottom:2px solid #666;padding:0;}	
	#paydiscount>div>span{display:block;height:auto;float:left;}
	#paydiscount>div>span:nth-child(1){width:30%;padding-left:25px;}
	#paydiscount>div>span:nth-child(2){width:65%;}
	#paydiscount>div:nth-child(3)>span>label{margin-left:15px;color:#666;font-size:0.9rem;}
	
	/*결제수단*/	
	#paymethod>div{padding:15px 0 15px 0;width:100%;height:auto;overflow:auto;}
	#paymethodselect{width:100%;border:1px solid #333;}/*결제방식선택*/	
	#paymethodselect>span{margin:0 15px 0 15px;}
	
	#paycardbox{width:100%;height:100px;display:flex;float:left;}/*카드결제선택씨 뜨는 디브*/
	#paycardbox>div:nth-child(1){width:20%;height:100%;background-color:#f0f0f0;color:#666;font-size:0.9rem;}
	#paycardbox>div:nth-child(1)>label{display:block;margin:15px 0 0 15px;}
	#paycardbox>div:nth-child(2){width:80%;height:100%;}
	#paycardbox>div:nth-child(2)>div:nth-child(1){width:100%;height:40%;border-top:1px solid #ddd;}/*카드선택*/
	#paycardbox>div:nth-child(2)>div:nth-child(1)>span{display: inline-block;margin-left:15px;margin-top: 10px;}
	#paycardbox>div:nth-child(2)>div:nth-child(2){width:100%;height:60%;white-space:pre-line;font-size:0.7rem;color:#999;border-top:0.5px dotted #ddd;}/*안내문*/
	#paycardbox>div:nth-child(2)>div:nth-child(2)>label{padding-left:10px;}
	
	/*************************************************************************/
	#rightdiv{width:300px;position:relative;}/*오른쪽영역*/
	#payInfoBox{width:280px; height:600px;position:sticky;top:170px;margin-left:20px;} /*결제정보축약박스  border:1px solid red;*/
	
	#howmuch{width:100%;height:300px;background-color:#f0f0f0;}
	#howmuch>div:nth-child(1){text-align:center;font-size:1.1rem;font-weight:bold;height:70px;line-height:70px;border-bottom:1px dotted #999;}
	
	#howmuch>div:nth-child(2){height:90px;}
	#howmuch>div:nth-child(2)>div{height:45px;display:flex;}
	#howmuch>div:nth-child(2)>div>div{width:50%;float:left;}
	/*#howmuch>div:nth-child(2)>div>div:nth-child(1){text-align:left;}*/
	#howmuch>div:nth-child(2)>div>div:nth-child(1)>label{display:inline-block;padding-left:20px;}/*왼쪽*/
	#howmuch>div:nth-child(2)>div>div:nth-child(2){text-align:right;}
	#howmuch>div:nth-child(2)>div>div:nth-child(2)>label{display:inline-block;padding-right:20px;}/*오른쪽*/
	
	#howmuch>div:nth-child(3){height:90px;border-top:1px dotted #999;}
	#howmuch>div:nth-child(3)>div{height:45px;display:flex;}
	#howmuch>div:nth-child(3)>div>div{width:50%;float:left;}
	#howmuch>div:nth-child(3)>div>div:nth-child(1)>label{display:inline-block;padding-left:20px;}/*왼쪽*/
	#howmuch>div:nth-child(3)>div>div:nth-child(2){text-align:right;}
	#howmuch>div:nth-child(3)>div>div:nth-child(2)>label{display:inline-block;padding-right:20px;}/*오른쪽*/
	#howmuch>div:nth-child(3)>div:nth-child(1)>div:nth-child(2){color:#ff385c;font-weight:bold;}
	
	#payInfoBox>div:nth-child(2){width:100%;height:250px;border:1px solid #999;margin-top:15px;}
    	
    #payInfoBox>div:nth-child(2)>div{height:25%;}
    #payInfoBox>div:nth-child(2)>div:nth-child(4){background-color:#333;color:white;font-size:1.1rem;font-weight:bold;text-align:center;}
    #payInfoBox>div:nth-child(2)>div:nth-child(4)>label{display:inline-block;padding-top:20px;}   	
</style>

</head>
<body>
<div id="payPageContainer">
		
	<div id="leftdiv">
		<div id="payPageTitle"><span>주문결제</span></div><!-- 페이지타이틀 -->
		
		
		<div id="paymemberinfo"><!-- 주문자정보 -->
			<div class="secondTitleD">주문자정보</div>
			<div><span>주문하시는분</span><span>김비트</span></div>
			<div><span>이메일</span><span>bitcamp@nate.com</span></div>
			<div><span>휴대폰번호</span><span>010-1234-5678</span></div>
		</div>
		
		<div id="payclassinfo"><!-- 주문상품 -->
			<div class="secondTitleD">주문상품</div>
			<div><span>상품정보</span><span>인원</span><span>총상품금액</span><span>포인트</span></div>
			
			<div class="payclassinfoorder" style="height:150px;"><!-- 주문한줄.... -->
				<div><!-- 이미지+제목 -->
					<div><img src="img/jisu/classimg5.png"></div> <!-- 이미지 -->
					<div><!-- 제목+강사 -->
						<div>늘 예쁜 꽃, 디자인을 잘 하면 더 예뻐져요. 쉐이드그린의 감각적인 생화 디자인</div>
						<div>마치가든</div>
						<div>옵션날짜 : 2021.09.02 14:00</div>
					</div>
				</div>
				<div class="orderrest">3명</div><!-- 인원 -->
				<div class="orderrest">38000원</div><!-- 총상품금액 -->
				<div class="orderrest">3800P</div>
			</div>
		</div>
		
		<div id="paydiscount"><!-- 할인받기 -->
			<div class="secondTitleD">할인받기</div>
			<div><span>결제예정금액</span><span>114,000원</span></div>
			<div><span>포인트</span><span><input type="text"><label>잔액 3000p</label></span></div>
			
			
		</div>
				
		<div id="paymethod"><!-- 결제수단 -->
			<div class="secondTitleD">결제수단</div>
			<div id="paymethodselect"">
				<span><input type="radio" name="paymentmethod" value="paycard"/>신용카드</span>
				<span><input type="radio" name="paymentmethod" value="paybank"/>무통장입금</span>
				<span><input type="radio" name="paymentmethod" value="paysimple"/>간편결제</span>
			</div>
			
			<div id="paycardbox" style="height:120px;">
				<div><label>신용카드</label></div>
				<div>
					<div><!-- 카드선택 -->
						
					  <span><select>
							<option>카드선택</option>
							<option>비씨카드</option>
							<option>국민카드</option>
							<option>삼성카드</option>
							<option>현대카드</option>
							<option>롯데카드</option>
							<option>신한카드</option>
							<option>하나카드</option>
							<option>외한카드</option>
							<option>NH카드</option>
							<option>시티카드</option>
							<option>k뱅크카드</option>
							<option>카카오뱅크카드</option>
						</select></span>
					</div>
						
				
				   <div>				   	
				   		<label>- 할부 최소 금액은 5만원이며 30만원 이상 결제 시에 카드사에 따라공인인증 사용이 요구될 수 있습니다.</label>
						<label>- 청구할인은 카드사에서 제공하며, 결제대금의 청구 시점에 차감 청구되는 할인 방식입니다.</label>
						<label>- BC우리, 수협, 광주, 전북JB,, MG 새마을,우체국, 저축은행 , 산업, 제주, 신협, 현대증권카드는 사용할 수 없습니다.</label>
						
					</div>
				</div>
			</div>
			
			<div id="paybankbox" style="display:none;">
			</div>
			
			<div id="paysimple" style="display:none;">
			</div>
		</div>
		
		<!-- ------------------------------- -->
		<div></div><!-- 결제버튼?흠 -->
	
	</div>
	
	<!--============================================================================================= -->
	<div id="rightdiv">
		<div id="payInfoBox">
			
			<div id="howmuch"><!-- 결제금액 -->
				<div>최종결제금액</div>
				<div>
					<div>
						<div><label>총 상품금액</label></div><div><label>114,000원</label></div>
					</div>
					<div>
						<div><label>포인트</label></div><div><label>3000원</label></div>
					</div>
				</div>
				<div>
					<div>
						<div><label>최종결제금액</label></div><div><label>111,000원</label></div>
					</div>
					<div>
						<div><label>적립예정 포인트</label></div><div><label>1110 p</label></div>
					</div>
				</div>
			</div>
			
			<div><!-- 동의+결제하기 -->
				<div style="visibility:hidden;">d</div>
				<div style="visibility:hidden;">d</div>
				<div style="visibility:hidden;">d</div>
				<div><label>결제하기</label></div>
			</div>
		</div>
	</div>

</div>
</body>
</html>