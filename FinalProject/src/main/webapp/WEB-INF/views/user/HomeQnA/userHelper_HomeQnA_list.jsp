<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
	a:link, a:visited{text-decoration:none;color:#333;}
	#hQnAD{width:1200px;height:auto;margin:0 auto;}
	.hQnAT{width:100%;text-align:center;font-size:32px;font-weight: bold;color:#333;margin:40px 0 40px 0;}
	
	/*리스트*/
	ul,li{margin:0;padding:0;list-style-type:none;}
	#hQnWrite{width:100%;margin:0 auto;}
	#hQnAList{width:100%;height:auto;margin:0 auto;overflow:auto;}
	#hQnAListUl{width:100%;text-align:center;}
	#hQnAListUl>li{float:left;width:10%;margin:7px 0 7px 0;border-bottom:1px solid #ddd;padding-bottom:7px;}
	#hQnAListUl>li:nth-child(5n+1){width:10%}
	#hQnAListUl>li:nth-child(5n+2){width:56%;white-space:nowrap;overflow:hidden;text-overflow: ellipsis;text-align:left;}
	#hQnAListUl>li:nth-child(5n+4){width:14%}
	
	.hQnAListFli{border-bottom:1px solid black;margin-top:10px;padding:8px 0 8px 0;background-color:#ddd;font-weight:bold;} /*리스트타이틀*/	

	#hQnWrite{text-align:right;margin-bottom:15px;margin-top:10px;padding-right:7px;}/*글쓰기 버튼div*/
	#hQnWritelab{padding:7px 7px 7px 7px;background-color:#464646;}/*글쓰기 버튼div*/
	
	/*답변
	.replyNo,.replysort{visibility:hidden;} */
	.replySubject{text-align:left;}
</style>
</head>
<body>
<div id="hQnAD">
	<div class="hQnAT">홈페이지문의</div> <!-- 페이지 타이틀 -->
	<div id="hQnWrite"><label id="hQnWritelab"><a href="#" style="color:white;">문의하기</a></label></div> <!-- 글쓰기버튼 -->
	<div id="hQnAList"> <!-- 게시판리스트 -->
		<ul id="hQnAListUl">
			<li  class="hQnAListFli">No.</li>
			<li  class="hQnAListFli" style="text-align:center">글제목</li>
			<li  class="hQnAListFli">작성자</li>
			<li  class="hQnAListFli">작성일자</li>
			<li  class="hQnAListFli">답변여부</li>
			
			<li>1</li>
			<li><a href="#">주문후 결제방법을 변경하고 싶은데 어떻게 해야 하나요?</a></li>
			<li>신*솜</li>
			<li>2021-01-01</li>
			<li>답변완료</li>
			
			<li class="replyNo">reply</li>
			<li class="replySubject"><a href="#">&nbsp;ㄴ&nbsp;답변입니다</a></li>
			<li>관리자</li>
			<li>2021-01-02</li>
			<li class="replysort">답변</li>
		
			<li >2</li>
			<li><a href="#">결제시 에러메시지가 나오는경우 어떻게 해야하나요?</a></li>
			<li>장*영</li>
			<li>2021-01-01</li>
			<li>미답변</li>
		</ul>
	
	</div>
</div>
</body>
</html>