<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<style>
	/*제일겉에있는 Div*/
	#hQnAWriteD3{width:1200px;height:auto;margin:0 auto;}
	.hQnAT{width:100%;text-align:center;font-size:32px;font-weight: bold;color:#333;margin:40px 0 40px 0;}
	.hQnATWT3{width:100%;text-align:left;font-size:24px;font-weight: bold;color:#333;margin-left:8px;}
		
	
	#hQnATul2{width:100%;height:auto;margin:0 auto;overflow:auto;} /*border:1px solid black;*/
	#hQnATul2>li{width:100%;height:auto;float:left;display:flex;font-size:20px;margin:10px 0 10px 0;padding:8px 0px 15px 0px;;border-bottom:1px solid #ddd;}
	#hQnATul2>li>div:nth-child(1){width:15%;}
	#hQnATul2>li>div:nth-child(2){width:85%;}
	#hQnATul2>li:nth-child(1){border-top:3px solid #333;padding-top:8px;}
	#hQnATul2>li:nth-child(5)>div:nth-child(2)>label{background-color:rgb(125,125,125);color:white;padding:5px 8px 5px 8px;}
	
	#hQnAWriteSubedit{width:90%;background-color:#ddd;border:none;height:35px;font-size:1.2rem;}/*제목텍스트박스*/
	#hQnAWriteConedit{width:90%;min-height:500px;background-color:#ddd;border:none;resize:none;overflow:auto;font-size:1.2rem;}/*문의내용텍스트아리아*/
	#hQnAWriteFileedit{display:none;}/*파일첨부*/
	#hQnAButedit{border:none;justify-content:center;}/*취소 수정 목록 버튼*/
	#hQnAWEditedit{margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}
	#hQnAeditSubmit{margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}
	
</style>
<script>
	$("input[type='file']").change(function(event){
	    var imageFile = event.target.files[0];
	    console.log(imageFile.name);
	    var reader = new FileReader();
	    reader.onload = (e) => {
	       $("#fu").children().attr("src", e.target.result);
	       $("#uploaded").html(imageFile.name);
	    };
	    reader.readAsDataURL(imageFile);           
	 });
</script>
</head>
<body>
<div id="hQnAWriteD3">
	<div class="hQnAT">홈페이지문의</div> <!-- 페이지 타이틀 -->
	
		<div class="hQnATWT3">글수정</div>
		
		<form method="post" action="">
	
			<ul id="hQnATul2">
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
					<div><input type="text" name="hQnAWriteSubedit" id="hQnAWriteSubedit" value="주문후 결제방법을 변경하고 싶은데 어떻게 해야 하나요?"></div>	
				</li>
				<li>
					<div>문의내용</div>
					<div><textarea name="hQnAWriteConedit" id="hQnAWriteConedit">주문후 결제방법을 변경하고 싶은데 어떻게 해야 하나요?</textarea></div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div id="fu">
						<input type="file" name="hQnAWriteFileedit" id="hQnAWriteFileedit">
						<label for="hQnAWriteFileedit">파일선택</label><span id="uploaded"></span>
					</div>	
				</li>
				<li>
					<div>답변여부</div>
					<div>미답변</div>	
				</li>
				<li id="hQnAButedit">
					<input type="button" name="hQnAWEditedit" id="hQnAWEditedit" value="취소"/><input type="submit" name="hQnAWeditSubmit" id="hQnAeditSubmit" value="등록"/>
				</li>				
			</ul>
		</form>

</div>

<!-- 
<li id="fu">	
	  <span id="fileTitle">파일첨부</span><label for="filename" id="fileUpload">파일 선택</label>
      <sapn id="uploaded"></span>
</li>
<li>
		<input type="file" name="filename" id="filename"/>
</li>

 -->