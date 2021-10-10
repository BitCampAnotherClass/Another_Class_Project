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
	
	#hQnAWriteSubview{width:90%;background-color:#f0f0f0;border:none;height:35px;font-size:1.2rem;}/*제목텍스트박스*/
	#hQnAWriteConview{width:90%;min-height:500px;background-color:#f0f0f0;border:none;resize:none;overflow:auto;font-size:1.2rem;}/*문의내용텍스트아리아*/
	/*파일첨부*/
	#hQnAButview{border:none;justify-content:center;}/*취소 수정 목록 버튼*/
	#hQnAWEdit,#hQnAWDel,#hQnAWList {margin:0 20px 0 20px;width:150px;height:50px;font-size:20px;}
	
</style>
<script>
	$(()=>{
		
		//수정 hQnAWEdit
		//$("hQnAWEdit").click(()=>{
		//	$("#homeQnAVFrm").attr("action", "/teamproject/HomeQnAAsk/edit" );
		//	$("#homeQnAVFrm").submit();
		//});
		
		//목록
		$("#hQnAWList").click(()=>{
			$("#homeQnAVFrm").attr("action", "/teamproject/HomeQnAAsk/list" );
			$("#homeQnAVFrm").submit();
		});
		
		//삭제 hQnAWDel
		$("#hQnAWDel").click(()=>{
			if(confirm('글을 삭제하시겠습니까??')){
				location.href="/teamproject/HomeQnAAsk/del?no=${vo.user_qna_no}";
			}			
		});
		
		
	});
</script>


<div id="hQnAWriteD20">
	<div class="hQnAT">홈페이지문의</div> <!-- 페이지 타이틀 -->
	
		<div class="hQnATWT20" >글내용보기</div>
		
		<form method="post" id="homeQnAVFrm">
			<ul id="hQnATul">
				<li>
					<div>작성자</div>
					<div>${vo.member_id }</div>	
				</li>
				<li>
					<div>작성일자</div>
					<div>${vo.writedate }</div>	
				</li>
				<li>
					<div>제목</div>
					<div><input type="text" name="hQnAWriteSubview" id="hQnAWriteSubview" readonly disabled value="${vo.title }"></div>	
				</li>
				<li>
					<div>문의내용</div>
					<div><textarea name="hQnAWriteConview" id="hQnAWriteConview" readonly disabled >${vo.content }</textarea></div>	
				</li>
				<li>
					<div>파일첨부</div>
					<div>${vo.file1 }</div>	<!-- hQnAWriteFileview -->
				</li>
				<li>
					<div>답변여부</div>
					<div>${vo.board_no2 }</div>	
				</li>
				<li id="hQnAButview">
					
					<!-- 글작성자만 수정,삭제 버튼 보이게 				
					<c:if test="${member_id=='memberid'}"></c:if>
					-->
						<input type="button" name="hQnAWEdit" id="hQnAWEdit" value="수정" onclick="location.href='/teamproject/HomeQnAAsk/Edit?no=${vo.user_qna_no}';"/>
						<input type="button" name="hQnAWDel" id="hQnAWDel" value="삭제"/>
				
					<input type="button" name="hQnAWList" id="hQnAWList" value="목록"/>
				</li>				
			</ul>
		</form>
			<div style="display:none">${vo.user_qna_no }</div><!-- 글번호 -->
			
</div>
