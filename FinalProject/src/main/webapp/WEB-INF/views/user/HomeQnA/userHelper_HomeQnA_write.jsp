<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	/*제일겉에있는 Div*/
	#hQnAWriteD33{width:1200px;height:auto;margin:0 auto;}
	.hQnAT{width:100%;text-align:center;font-size:32px;font-weight: bold;color:#333;margin:40px 0 40px 0;}
	.hQnATWT{width:100%;text-align:left;font-size:24px;font-weight: bold;color:#333;margin-left:8px;}
		
	#hQnAWriteD33ul{width:100%;height:auto;margin:0 auto;overflow:auto;} /*border:1px solid black;*/
	#hQnAWriteD33ul>li{width:100%;height:auto;float:left;display:flex;font-size:20px;margin:10px 0 10px 0;padding:8px 0px 15px 0px;;border-bottom:1px solid #ddd;}
	#hQnAWriteD33ul>li>div:nth-child(1){width:15%;}
	#hQnAWriteD33ul>li>div:nth-child(2){width:85%;}
	#hQnAWriteD33ul>li:nth-child(1){border-top:3px solid #333;padding-top:8px;}
	#hQnAWriteD33ul>li:nth-child(4)>div:nth-child(2)>label{background-color:rgb(125,125,125);color:white;padding:5px 8px 5px 8px;}
	
	#hQnAWriteSub{width:90%;background-color:#f0f0f0;border:none;height:35px;font-size:1.2rem;}/*제목텍스트박스*/
	#hQnAWriteCon{width:90%;min-height:500px;background-color:#f0f0f0;border:none;resize:none;overflow:auto;font-size:1.2rem;}/*문의내용텍스트아리아*/
	#hQnAWriteFile{display:none;}/*파일첨부*/
	#hQnABut{border:none;justify-content:center;}/*취소 등록 버튼*/
	#hQnAWCan6{margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}
	#hQnAWSubmit9{margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}
	
</style>
<script>
	$(()=>{
		
		$("#hQnAWCan6").click(()=>{//취소버큰 클릭 -> 목록으로돌아가기
			$("#hQnAWriteD33ulFrm").attr("action", "/teamproject/HomeQnAAsk/list" );
			$("#hQnAWriteD33ulFrm").submit();			
		});
		
		$("#hQnAWSubmit9").click(()=>{//등록
			console.log("자스들어옴");
			$("#hQnAWriteD33ulFrm").attr("action", "/teamproject/HomeQnAAsk/writeOk" );
			$("#hQnAWriteD33ulFrm").submit();			
		});
	});
	

</script>
	<div id="hQnAWriteD33">
		<div class="hQnAT">홈페이지문의</div> <!-- 페이지 타이틀 -->
		
		<div class="hQnATWT">1:1문의</div>
		
		<form method="post" id="hQnAWriteD33ulFrm">
			<ul id="hQnAWriteD33ul">
				<li>
					<div>회원정보</div>
					<div>${member_id}</div>	<!-- 세션에저장되어잉ㅆ는아이디 -->
				</li>
				<li>
					<div>제목</div>
					<div><input type="text" name="title" id="hQnAWriteSub" ></div>	
				</li>
				<li>
					<div>문의내용</div>
					<div><textarea name="content" id="hQnAWriteCon"></textarea></div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div><input type="file" name="file1" id="hQnAWriteFile"><label for="hQnAWriteFile">파일선택</label></div>	
				</li>
				<li id="hQnABut">
				<input type="button" name="hQnAWCan6" id="hQnAWCan6" value="취소"/><input type="button" name="hQnAWSubmit9" id="hQnAWSubmit9" value="등록"/>
				</li>				
			</ul>
			
			<!--  <input type="hidden" id="hiddennobox" name="member_id" value="${member_id}"><!-- 작성자 -->
		</form>
		
	</div>
