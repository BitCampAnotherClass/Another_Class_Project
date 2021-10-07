<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	/*제일겉에있는 Div*/
	#hQnAWriteD22{width:1200px;height:auto;margin:0 auto;}
	.hQnAT{width:100%;text-align:center;font-size:32px;font-weight: bold;color:#333;margin:40px 0 40px 0;}
	.hQnATWT22{width:100%;text-align:left;font-size:24px;font-weight: bold;color:#333;margin-left:8px;}
	

	#hQnAWriteD22ul{width:100%;height:auto;margin:0 auto;overflow:auto;} /*border:1px solid black;*/
	#hQnAWriteD22ul>li{width:100%;height:auto;float:left;display:flex;font-size:20px;margin:10px 0 10px 0;padding:8px 0px 15px 0px;;border-bottom:1px solid #ddd;}
	#hQnAWriteD22ul>li>div:nth-child(1){width:15%;}
	#hQnAWriteD22ul>li>div:nth-child(2){width:85%;}
	#hQnAWriteD22ul>li:nth-child(1){border-top:3px solid #333;padding-top:8px;}
	#hQnAWriteD22ul>li:nth-child(5)>div:nth-child(2)>label{background-color:rgb(125,125,125);color:white;padding:5px 8px 5px 8px;}
	
	#hQnAWriteSubview{width:90%;background-color:#ddd;border:none;height:35px;font-size:1.2rem;}/*제목텍스트박스*/
	#hQnAWriteConview{width:90%;min-height:500px;background-color:#ddd;border:none;resize:none;overflow:auto;font-size:1.2rem;}/*문의내용텍스트아리아*/
	/*파일첨부*/
	#hQnAButview{border:none;justify-content:center;}/*취소 수정 목록 버튼*/
	#hQnAWEdit20{margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}
	
</style>

<div id="hQnAWriteD22">
	<div class="hQnAT">홈페이지문의</div> <!-- 페이지 타이틀 -->
	
		<div class="hQnATWT22">답변 보기</div>
		
		
			<ul id="hQnAWriteD22ul">
				<li>
					<div>작성자</div>
					<div>관리자</div>	
				</li>
				<li>
					<div>작성일자</div>
					<div>2021-01-01</div>	
				</li>
				<li>
					<div>제목</div>
					<div><input type="text" name="hQnAWriteSubview" id="hQnAWriteSubview" readonly disabled value="답변입니다"></div>	
				</li>
				<li>
					<div>문의내용</div>
					<div><textarea name="hQnAWriteConview" id="hQnAWriteConview" readonly disabled >주문후 결제방법 변경은 불가합니다. 취소후 재결제 부탁드립니다.</textarea></div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div>파일명.jpg</div>	<!-- hQnAWriteFileview -->
				</li>				
				<li id="hQnAButview">
					<input type="button" name="hQnAWEdit20" id="hQnAWEdit20" value="목록"/>
				</li>				
			</ul>
		

</div>
</body>
</html>