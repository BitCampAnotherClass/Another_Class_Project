<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	a:link, a:visited{text-decoration:none;color:#333;}
	#hQnAD{width:1200px;height:auto;margin:0 auto;}
	.hQnAT{width:100%;text-align:center;font-size:32px;font-weight: bold;color:#333;margin:40px 0 40px 0;}
	
	/*리스트*/

	#hQnWrite{width:100%;margin:0 auto;}
	#hQnAList{width:100%;height:auto;margin:0 auto;overflow:auto;}
	#hQnAListUl{width:100%;text-align:center;}
	#hQnAListUl>li{float:left;width:10%;height:40px;margin:7px 0 7px 0;border-bottom:1px solid #ddd;padding-bottom:7px;}
	#hQnAListUl>li:nth-child(5n+1){width:10%}
	#hQnAListUl>li:nth-child(5n+2){width:56%;white-space:nowrap;overflow:hidden;text-overflow: ellipsis;text-align:left;}
	#hQnAListUl>li:nth-child(5n+4){width:14%}
	
	.hQnAListFli{border-bottom:1px solid black;margin-top:10px;padding:8px 0 8px 0;background-color:#f0f0f0;font-weight:bold;} /*리스트타이틀*/	

	#hQnWrite{text-align:right;margin-bottom:15px;margin-top:10px;padding-right:7px;}/*글쓰기 버튼div*/
	#hQnWritelab{padding:7px 7px 7px 7px;background-color:#464646;}/*글쓰기 버튼div*/
	
	/*답변
	.replyNo,.replysort{visibility:hidden;} */
	.replySubject{text-align:left;}
</style>

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
		
		<c:forEach var="vo" items="${list }">	
			<li>${vo.user_qna_no}</li>
			<li><a href="<%=request.getContextPath()%>/HomeQnAAsk/view?no=${vo.user_qna_no}">${vo.title }</a></li>
			<li>${vo.member_id }</li>
			<li>${vo.writedate }</li>
			<li>${vo.board_no2}</li>
		</c:forEach>
			
		</ul>
	
	</div>
</div>
