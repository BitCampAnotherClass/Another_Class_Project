<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
	/*제일겉에있는 Div*/
	#adminQnAWriteContainter{width:1000px;height:auto;margin:0 auto;}
	
	ul,li{margin:0;padding:0;list-style-type:none;}
	ul{width:100%;height:auto;margin:0 auto;overflow:auto;} /*border:1px solid black;*/
	li{width:100%;height:auto;float:left;display:flex;font-size:20px;margin:10px 0 10px 0;padding:8px 0px 15px 0px;;border-bottom:1px solid #ddd;}
	li>div:nth-child(1){width:15%;}
	li>div:nth-child(2){width:85%;}
	ul>li:nth-child(1){border-top:3px solid #333;padding-top:8px;}
	ul>li:nth-child(4)>div:nth-child(2)>label{background-color:rgb(125,125,125);color:white;padding:5px 8px 5px 8px;}
	
	#adminQnAWriteSub{width:90%;background-color:#ddd;border:none;height:35px;font-size:1.2rem;}/*제목텍스트박스*/
	#adminQnAWriteCon{width:90%;min-height:500px;background-color:#ddd;border:none;resize:none;overflow:auto;font-size:1.2rem;}/*문의내용텍스트아리아*/
	#adminQnAWriteFile,#adminQnAWriteFile2,#adminQnAWriteFile3{display:none;}/*파일첨부*/
	#adminQnAWriteBtn{border:none;justify-content:center;}/*취소 등록 버튼*/
	input[type=button] {margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}
	input[type=submit] {margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}
	
</style>
</head>
<body>
<div id="adminQnAWriteContainter">
		
		
		<form>
			<ul>
				<li>
					<div>회원정보</div>
					<div>김비트[asd*******]</div>	
				</li>
				<li>
					<div>제목</div>
					<div><input type="text" name="adminQnAWriteSub" id="adminQnAWriteSub" ></div>	
				</li>
				<li>
					<div>문의내용</div>
					<div><textarea name="adminQnAWriteCon" id="adminQnAWriteCon"></textarea></div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div><input type="file" name="adminQnAWriteFile" id="adminQnAWriteFile">
					<label for="adminQnAWriteFile">파일선택</label></div><span id="uploaded"></span>	
				</li>
				<li>
					<div>파일첨부</div>
					<div id="fu3">
						<input type="file" name="adminQnAWriteFile2" id="adminQnAWriteFile2">
						<label for="adminQnAWriteFile2">파일선택</label><span id="uploaded2"></span>
					</div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div id="fu3">
						<input type="file" name="adminQnAWriteFile3" id="adminQnAWriteFile3">
						<label for="adminQnAWriteFile3">파일선택</label><span id="uploaded3"></span>
					</div>	
				</li>
				<li id="adminQnAWriteBtn">
				<input type="button" name="adminQnAWriteCancel" id="adminQnAWriteCancel" value="취소"/><input type="submit" name="adminQnAWriteSubmit" id="adminQnAWriteSubmit" value="등록"/>
				</li>				
			</ul>
		</form>
		
</div>
</body>
</html>