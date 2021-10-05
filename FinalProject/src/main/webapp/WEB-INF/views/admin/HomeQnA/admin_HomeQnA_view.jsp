<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
	/*제일겉에있는 Div*/
	#adminQnAViewContainter{width:1000px;height:auto;margin:0 auto;}	
	
	ul,li{margin:0;padding:0;list-style-type:none;}
	ul{width:100%;height:auto;margin:0 auto;overflow:auto;} /*border:1px solid black;*/
	li{width:100%;height:auto;float:left;display:flex;font-size:20px;margin:10px 0 10px 0;padding:8px 0px 15px 0px;;border-bottom:1px solid #ddd;}
	li>div:nth-child(1){width:15%;}
	li>div:nth-child(2){width:85%;}
	ul>li:nth-child(1){border-top:3px solid #333;padding-top:8px;}
	label{background-color:rgb(125,125,125);color:white;padding:5px 8px 5px 8px;}

	
	#adminQnAViewSubject{width:90%;background-color:#ddd;border:none;height:35px;font-size:1.2rem;}/*제목텍스트박스*/
	#adminQnAViewContent{width:90%;min-height:500px;background-color:#ddd;border:none;resize:none;overflow:auto;font-size:1.2rem;}/*문의내용텍스트아리아*/
	
	
	#adminQnAViewFile,#adminQnAViewFile2,#adminQnAViewFile3{display:none;}/*파일첨부*/
	
	#adminQnAViewBtn{justify-content:center;}/*취소 수정 목록 버튼*/
	#adminQnAViewBtn>a{display:block;margin:0 20px 0 20px;width:150px;height:50px;line-height:50px;font-size:20px;border:1px solid #666;text-align:center;}
	#adminQnAViewBtn>a:link, a:visited{text-decoration:none;color:#333;}
	#adminQnAViewBtn>a:hover{color:#ff385c;}	
	
</style>
</head>
<body>
<div id="adminQnAViewContainter">		
			<ul>
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
					<div><input type="text" name="adminQnAViewSubject" id="adminQnAViewSubject" readonly disabled value="주문후 결제방법을 변경하고 싶은데 어떻게 해야 하나요?"></div>	
				</li>
				<li>
					<div>문의내용</div>
					<div><textarea name="adminQnAViewContent" id="adminQnAViewContent" readonly disabled >주문후 결제방법을 변경하고 싶은데 어떻게 해야 하나요?</textarea></div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div id="fud">
						<input type="file" name="adminQnAViewFile" id="adminQnAViewFile">
						<label for="adminQnAViewFile">파일선택</label><span id="uploaded"></span>
					</div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div id="fud2">
						<input type="file" name="adminQnAViewFile2" id="adminQnAViewFile2">
						<label for="adminQnAViewFile2">파일선택</label><span id="uploaded2"></span>
					</div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div id="fud3">
						<input type="file" name="adminQnAViewFile3" id="adminQnAViewFile3">
						<label for="adminQnAViewFile3">파일선택</label><span id="uploaded3"></span>
					</div>	
				</li>
				<li>
					<div>답변여부</div>
					<div>미답변</div>	
				</li>
				<li id="adminQnAViewBtn">
					<a href="#">수정</a><a href="#">삭제</a><a href="#">목록</a>
				</li>				
			</ul>
		

</div>
</body>
</html>