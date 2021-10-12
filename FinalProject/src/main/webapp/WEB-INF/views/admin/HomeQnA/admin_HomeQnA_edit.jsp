<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	/*제일겉에있는 Div*/
	#adminQnAEditContainter{width:1000px;height:auto;margin:0 auto;}	
	
	
	#adminQnAEditul{width:100%;height:auto;margin:0 auto;overflow:auto;} /*border:1px solid black;*/
	#adminQnAEditul>li{width:100%;height:auto;float:left;display:flex;font-size:20px;margin:10px 0 10px 0;padding:8px 0px 15px 0px;;border-bottom:1px solid #ddd;}
	#adminQnAEditul>li>div:nth-child(1){width:15%;}
	#adminQnAEditul>li>div:nth-child(2){width:85%;}
	#adminQnAEditul>li:nth-child(1){border-top:3px solid #333;padding-top:8px;}
	#adminQnAEditul label{background-color:rgb(125,125,125);color:white;padding:5px 8px 5px 8px;}

	
	#adminQnAEditSubject{width:90%;background-color:#ddd;border:none;height:35px;font-size:1.2rem;}/*제목텍스트박스*/
	#adminQnAEditContent{width:90%;min-height:500px;background-color:#ddd;border:none;resize:none;overflow:auto;font-size:1.2rem;}/*문의내용텍스트아리아*/
	/*파일첨부*/
	#adminQnAEditFile,#adminQnAEditFile2,#adminQnAEditFile3{display:none;}/*파일첨부*/
	#adminQnAEditBtn{border:none;justify-content:center;}/*취소 수정 목록 버튼*/
	#hQnAWEditedit{margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}
	#hQnAeditSubmit{margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}	
	
</style>
</head>
<body>
<div id="adminQnAEditContainter">		

	<form method="post" action="">
			<ul id="adminQnAEditul">
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
					<div><input type="text" name="adminQnAEditSubject" id="adminQnAEditSubject" value="주문후 결제방법을 변경하고 싶은데 어떻게 해야 하나요?"></div>	
				</li>
				<li>
					<div>문의내용</div>
					<div><textarea name="adminQnAEditContent" id="adminQnAEditContent">주문후 결제방법을 변경하고 싶은데 어떻게 해야 하나요?</textarea></div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div id="fu">
						<input type="file" name="adminQnAEditFile" id="adminQnAEditFile">
						<label for="adminQnAEditFile">파일선택</label><span id="uploaded"></span>
					</div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div id="fu2">
						<input type="file" name="adminQnAEditFile2" id="adminQnAEditFile2">
						<label for="adminQnAEditFile2">파일선택</label><span id="uploaded2"></span>
					</div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div id="fu3">
						<input type="file" name="adminQnAEditFile3" id="adminQnAEditFile3">
						<label for="adminQnAEditFile3">파일선택</label><span id="uploaded3"></span>
					</div>	
				</li>
				<li>
					<div>답변여부</div>
					<div>미답변</div>	
				</li>
				<li id="adminQnAEditBtn">					
					<input type="button" name="hQnAWEditedit" id="hQnAWEditedit" value="취소"/><input type="submit" name="hQnAWeditSubmit" id="hQnAeditSubmit" value="등록"/>
				</li>				
			</ul>
	</form>

</div>
