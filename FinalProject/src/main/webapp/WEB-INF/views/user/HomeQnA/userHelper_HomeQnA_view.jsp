<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	/*제일겉에있는 Div*/
	#hQnAWriteD20{width:1200px;height:auto;margin:0 auto;}
	.hQnAT{width:100%;text-align:center;font-size:32px;font-weight: bold;color:#333;margin:40px 0 40px 0;}
	.hQnATWT20{width:100%;text-align:left;font-size:24px;font-weight: bold;color:#333;margin-left:8px;}
	
	#hQnATWT20 ul,li{margin:0;padding:0;list-style-type:none;}
	#hQnATul{width:100%;height:auto;margin:0 auto;overflow:auto;} /*border:1px solid black;*/
	#hQnATul>li{width:100%;height:auto;float:left;display:flex;font-size:20px;margin:10px 0 10px 0;padding:8px 0px 15px 0px;;border-bottom:1px solid #ddd;}
	#hQnATul>li>div:nth-child(1){width:15%;}
	#hQnATul>li>div:nth-child(2){width:85%;}
	#hQnATul>>li:nth-child(1){border-top:3px solid #333;padding-top:8px;}
	#hQnATul>>li:nth-child(5)>div:nth-child(2)>label{background-color:rgb(125,125,125);color:white;padding:5px 8px 5px 8px;}
	
	#hQnAWriteSubview{width:90%;background-color:#ddd;border:none;height:35px;font-size:1.2rem;}/*제목텍스트박스*/
	#hQnAWriteConview{width:90%;min-height:500px;background-color:#ddd;border:none;resize:none;overflow:auto;font-size:1.2rem;}/*문의내용텍스트아리아*/
	/*파일첨부*/
	#hQnAButview{border:none;justify-content:center;}/*취소 수정 목록 버튼*/
	#hQnAWEdit,#hQnAWDel,#hQnAWList {margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}
	
</style>

<div id="hQnAWriteD20">
	<div class="hQnAT">홈페이지문의</div> <!-- 페이지 타이틀 -->
	
		<div class="hQnATWT20" >글내용보기</div>
		
		
			<ul id="hQnATul">
				<li>
					<div>작성자</div>
					<div>신*솜[asd*******]</div>	
				</li>
				<li>
					<div>작성일자</div>
					<div>2021-01-01</div>	
				</li>
				<li>
					<div>제목</div>
					<div><input type="text" name="hQnAWriteSubview" id="hQnAWriteSubview" readonly disabled value="주문후 결제방법을 변경하고 싶은데 어떻게 해야 하나요?"></div>	
				</li>
				<li>
					<div>문의내용</div>
					<div><textarea name="hQnAWriteConview" id="hQnAWriteConview" readonly disabled >주문후 결제방법을 변경하고 싶은데 어떻게 해야 하나요?</textarea></div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div>파일명.jpg</div>	<!-- hQnAWriteFileview -->
				</li>
				<li>
					<div>답변여부</div>
					<div>미답변</div>	
				</li>
				<li id="hQnAButview">
					<input type="button" name="hQnAWEdit" id="hQnAWEdit" value="수정"/><input type="button" name="hQnAWDel" id="hQnAWDel" value="삭제"/><input type="button" name="hQnAWList" id="hQnAWList" value="목록"/>
				</li>				
			</ul>
		

</div>
