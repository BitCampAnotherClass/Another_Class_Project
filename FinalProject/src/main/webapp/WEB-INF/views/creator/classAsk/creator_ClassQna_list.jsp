<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>
	
	#hQnAD{width:1200px;height:auto;margin:0 auto}/*;*/
	.hQnAT{width:100%;text-align:left;font-size:32px;font-weight: bold;color:#333;margin-top:20px;}/*margin:40px 0 40px 0;*/
	
	/*리스트*/

	#hQnWrite{width:100%;margin:0 auto;}
	#hQnAList{width:100%;height:auto;margin:0 auto;overflow:auto;}
	#hQnAListUl{width:100%;text-align:center;height:auto;overflow:auto;}
	
	.hQnAListFli10,.hQnAListFli{float:left;width:10%;height:60px;line-height:60px;border-bottom:1px solid #ddd;}
	.hQnAListFli1,.hQnAListFli101{width:10%} /*클래스번호 넣을거면 7로변경*/
	.hQnAListFli2,.hQnAListFli102{width:56%;white-space:nowrap;overflow:hidden;text-overflow: ellipsis;text-align:left;}
	.hQnAListFli4,.hQnAListFli104{width:14%}/*클래스번호 넣을거면 14로변경*/
	
	.hQnAListFli{border-bottom:1px solid black;margin-top:10px;background-color:#f0f0f0;font-weight:bold;font-size:1.1rem;} /*리스트타이틀*/	

	#hQnWrite{height:auto;text-align:right;margin-bottom:15px;margin-top:10px;padding-right:7px;}/*글쓰기 버튼div*/
	#hQnWritelab{padding:7px 15px 7px 15px;background-color:#464646;font-size:18px;}/*글쓰기 버튼div*/

	.replySubject{text-align:left;}	
	
	.hQnAList-button>a:hover{color:ff385c;}
	.hQnAList-button>a:active{color:ff385c;}
	
	
	.paging{display:flex;justify-content:center;margin:30px 0;font-size:1.2em;}
    .paging>li{margin:0 10px;}
    .now>a{font-weight:bold;text-decoration:underline solid #00A3EF;color:#382E2C;font-size:1.1em}
	
</style>
<script>

	$(()=>{

		
		
	});
</script>
<!-- class_qna_no, class_no, classQna_member_id, classqna_content, to_char(a.classqna_writedate,'YY-MM-DD') classqna_writedate, class_name -->
	
	
	<div id="hQnAD">
	<div class="hQnAT">클래스문의</div> <!-- 페이지 타이틀 -->
	<!-- <div id="hQnWrite"><label id="hQnWritelab"><a href="<%=request.getContextPath()%>/HomeQnAAsk/write" style="color:white;">문의하기</a></label></div> <!-- 글쓰기버튼 -->
	
	<div id="hQnWrite"><!-- 검색 -->
		<div>         
            <input type="text" id="searchKeyword" name="searchKeyword" placeholder="검색어를 입력해 주세요."/><button id="searchIcon"><i class="fas fa-search"></i></button>         
         </div>	
		<label id="hQnWritelab" style="color:white;">검색</label>
	</div> 
	
	<div id="hQnAList"> <!-- 게시판리스트 -->
		<ul id="hQnAListUl">
			<li  class="hQnAListFli hQnAListFli1">No.</li>
			<!-- <li  class="hQnAListFli hQnAListFli1">클래스번호</li> -->
			<li  class="hQnAListFli hQnAListFli2" style="text-align:center">클래스명</li>
			<li  class="hQnAListFli hQnAListFli3">작성자</li>
			<li  class="hQnAListFli hQnAListFli4">작성일자</li>
			<li  class="hQnAListFli hQnAListFli5">답변여부</li>
		
		<c:forEach var="vo" items="${list }">	
		
			<!-- 글번호 -->
			
			<li class="hQnAListFli10 hQnAListFli101">${vo.class_qna_no}</li>			
			<!-- <li class="hQnAListFli10 hQnAListFli101">${vo.class_no}</li> -->
			<li class="hQnAListFli10 hQnAListFli102" style='text-align:center;'><a href="<%=request.getContextPath()%>/HomeQnAAsk/view">${vo.class_name}</a><input type="hidden" value="${vo.class_no}"></li>
	
		
			<li class="hQnAListFli10 hQnAListFli103">${vo.classqna_member_id }</li>
			<li class="hQnAListFli10 hQnAListFli104">${vo.classqna_writedate}</li>
			
			
			<li class="hQnAListFli10 hQnAListFli105">답변완료</li>
		
		
			
		</c:forEach>
		</ul>
			<div class="hQnAList-button" style='text-align:center;margin-top:50px;'>
				<!-- 페이징 -->
			</div>
			
		<!-- 페이징 -->
		<ul class="paging">
         <c:if test="${pVo.nowPage>1}">
            <li><a href="creator/classAsk/creator_ClassQna_list?nowPage=${pVo.nowPage-1}<c:if test='${searchWord != null}'>&searchWord=${pVo.searchKeyword}</c:if>" class="fas fa-angle-left">Prev</a>
         </c:if>
         <c:if test="${pVo.nowPage==1}">
      		<li class='page-item'><a href="#" class='page-link'>Prev</a></li>
      	</c:if>
      
      <!-- 시작페이지부터 5개의 페이지를 출력한다. -->
         <!-- 6,7,8,9,10 -->
         <c:forEach var="i" begin="${pVo.startPage }" end="${pVo.startPage+pVo.onePageNumCount-1 }">
         <!-- 출력할 페이지번호 총페이지수보다 작을때만 출력한다. -->
         <c:if test="${i<=pVo.totalPage }">
            <c:if test="${i==pVo.nowPage }">
               <li class="now">
            </c:if>
            <c:if test="${i!=pVo.nowPage }">
               <li>
            </c:if>
            <a href="creator/classAsk/creator_ClassQna_list?nowPage=${i}<c:if test='${searchWord != null}'>&searchWord=${pVo.searchWord}</c:if>">${i}</a>
         </c:if>
         
         </c:forEach>
         <c:if test="${pVo.nowPage<pVo.totalPage}">
            <li class='page-item'><a href="creator/classAsk/creator_ClassQna_list?nowPage=${pVo.nowPage+1 }<c:if test='${searchWord != null}'>&searchWord=${pVo.searchWord}</c:if>" class="fas fa-angle-right">Next</a></li>
         </c:if>   
      </ul>

		
		
	</div>
	
</div>
