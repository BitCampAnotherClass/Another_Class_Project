<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

	#likedClassList{width:90%;height:auto;overflow:auto;margin:0 auto;}/*height:auto;*//*좋아요크리에이터 리스트 감싸고 있는 div*/
	.main_container{ background-color:;
	width:1200px;
	height:auto;
	margin:0 auto;
	overflow:hidden;
}
.top_container{ background-color:;
	width:100%;
	height:130px;
	margin-top:30px;
}
.page_name a{
	background-color:; 
	border:1px dotted lightgray;
	border-radius:8px;
	width:64%;
	height:100px;
	float: left;
	text-align: center;
	color:#333;
	display: table-cell;
	font-weight: 500;
	font-size: 1.6em;
	line-height: 100px;
}
.select_boxes{background-color:;
	width:35%;
	height:100px;
	margin:0px 10px 0px 0;
	float: right;
}
.select_boxes>input[type=text]{background-color:white;
 	border:1px dotted gray;
	height:30px;
	width:100%;
	border-radius:8px;
	font-weight: 500;
	color:gray;
	text-align: center;
}
/*.select_boxes>select>option:nth-child(1){
	text-align: center;
}
.select_boxes>select>option{
	background-color: white;
}
*/
.select_range{background-color:;
 	width:420px;
 	height:30px;
}
.select_range li{
	float:left;
}
.priceRangeBox{ 
	border:1px dotted gray;
	width:100px;
	height:30px;
	text-align: center;
	border-radius:8px;
	font-weight: 500;
	background-color:white;
	margin-top:5px;
	color:gray;
}
.more>button{
	color:#FF385C;
	cursor: pointer;
	float: right;
	width:100%;
	height: 30px;
	background-color: white;
}
.more>button:hover{
	background-color:#FF385C;
	color:white;
}
input[type=button]{
	color:#FF385C;
	cursor: pointer;
	float: right;
	width:100%;
}
input[type=button]:hover{
	background-color:#FF385C;
	color:white;
}
#slider-range{background-color:; 
	margin:10px 5px 0 5px;
	width:210px;
	height:10px;
	
}
.ui-slider-range{
	background-color:#FF385C;
	color:red;
}
.middle_container{ background-color:;
	width:100%;
	height:1100px;
}
.middle_top_select{ background-color:;
	border-top:2px solid lightgray;
	height:35px;
	widht:100%;
}
.middle_top_select>ul{background-color:;
	
	height:30px;
	float: right;
}.middle_top_select>ul>li{
	text-align: center;
	float: right;
	font-size: 0.8em;
	font-weight: 500;
	line-height: 40px;
	color:gray;
}

.middle_top_select>ul>li:not(:nth-child(2)){
	width:100px;
}
.class_div{ border:1px dotted lightgray;
	float:left;
	width:23%;
	height:350px;
	margin:1% 1% 1% 1%;
	border-radius:8px;
	padding:5px 5px 5px 5px;
}
.img_div{ border:1px dotted lightgray;
	width:100%;
	height:53%;
	border-radius:8px;
	margin:0 auto;
	overflow:hidden;
	
}
.img_size{
	width:100%;
	heigth:100%;
	object-fit:cover;
}
.info_div{border:1px dotted lightgray;/* 정보 div */
	width:100%;
	height:42%;
	padding:5px 5px 5px 5px;    
	border-radius:8px;
	margin-top:5%;
}
.info_div>ul{background-color:;
	float:right;
	width:100%;
}
.info_div li:not(:nth-child(1)){
	text-align:right;
	width:100%;
	
}
.info_div>ul>li:nth-child(1)>div {
	background-color:#FF385C; /* 카테고리 정보 div */
	border-radius:8px;
	display:inline-block;
	padding:0 10px 0 10px;
	color:white;
}
.info_div>ul>li:nth-child(2) {
	font-weight: 500;
	overflow: hidden;
	display:inline-block;
	max-height: 24px;
	color:gray;
}
.info_div>ul>li:nth-child(3) {
	font-weight: 400;
	color:gray;
	border:1px dotted #00B9B1;
	color:#00B9B1;
	border-radius:6px;
	overflow: hidden;
	height:28px;
}
.info_div>ul>li:nth-child(4) {
	font-weight: 500;
	color:gray;
	color:#FF385C;
}
.info_div>ul>li:nth-child(5) {
	font-weight: 500;
	color:gray;
}
.info_div>ul>li:nth-child(6) { /* 클래스 넘버 숨겨둠*/
	display: none;
}
.price_sort, .apply_sort{
	cursor: pointer;
}
</style>
<script>
$(function(){
		var logid = "${userId}";
		
		
		var listCnt = 3; // 목록에서 한 번에 보여줄 클래스 개수
		
	
		///////////////////////////가까운 시작일
		function getLikedListClass(){
		var url = "/another/LikedListClass";
		var params = {"logid":logid}
		$.ajax({
		url : url,
		data : params,
		async:false,
		success:function(r){
		var rr=$(r);		
		var classDiv = '';
		rr.each(function(idx,vo){			
			 	
				if( idx <= (listCnt-1) ){	
				
				classDiv  = '<div class="class_div">';
				classDiv += '<div class="img_div">';
				classDiv += '<a href="<%=request.getContextPath()%>/classDetailView?no=' + r[idx].class_no + '" target="">'
				classDiv +=	'<img class="img_size" src="<%=request.getContextPath()%>/img/kimin/maca.png">';
				classDiv += '</a>'
				classDiv += '</div>';
				classDiv +=	'<div class="info_div">';
				classDiv += '<ul>';
				classDiv += '<li><div>'+ category_name[idx]+'</div></li>';
				classDiv += '<li>'+className_arry[idx]+'</li>';
				classDiv +=	'<li>'+classTag_arry[idx]+'</li>'
				classDiv +=	'<li>'+startDate_arry[idx]+'</li>';
				classDiv +=	'<li>'+classPrice_arry[idx]+'원</li>';
				classDiv += '</ul>';
				classDiv +='</div>';
				classDiv +='</div>';
				$('.middle_container').append(classDiv);
				$('.no-result-txt').hide(); // 결과 없음 내용 숨기기
				$('.more').show(); // 더보기 버튼 보이기
				if(idx >= r.length-1){ // 남은 클래스가 없으면 more 버튼 숨기기
					$('.more').hide();
				}
			}
			var n=1;
			$('.more > button').click(function(){
				n++;
				if( idx >= listCnt*(n-1) && idx <= (listCnt*n-1) ){
					classDiv  = '<div class="class_div">';
					classDiv += '<div class="img_div">';
					classDiv += '<a href="<%=request.getContextPath()%>/classDetailView?no=' + r[idx].class_no + '" target="">'
					classDiv +=	'<img class="img_size" src="<%=request.getContextPath()%>/img/kimin/maca.png">';
					classDiv += '</a>'
					classDiv += '</div>';
					classDiv +=	'<div class="info_div">';
					classDiv += '<ul>';
					classDiv += '<li><div>'+ category_name[idx]+'</div></li>';
					classDiv += '<li>'+className_arry[idx]+'</li>';
					classDiv +=	'<li>'+classTag_arry[idx]+'</li>'
					classDiv +=	'<li>'+startDate_arry[idx]+'</li>';
					classDiv +=	'<li>'+classPrice_arry[idx]+'원</li>';
					classDiv += '</ul>';
					classDiv +='</div>';
					classDiv +='</div>';
					$('.middle_container').append(classDiv);
					$('.no-result-txt').hide(); // 결과 없음 내용 숨기기
					 $('.more').show();
                 	 if(idx >= ll.length-1){ // 남은 클래스가 없으면 more 버튼 숨기기
                        $('.more').hide();
	                     }
	              }
	           }); ////////클릭이벤트
			});//each
		}//success
	});//ajax	
		
	};//function
		
};

</script>

<%@ include file="myPageTop.jspf" %>

<div id="likedClassList" class="bigTitle"><span class="h1style">♥ 클래스</span></div>

<div >

	<div class="main_container">
			
	
		<div class="middle_container">
			<!-- 클래스목록 -->							
		</div>
			
		<div class="more" style="display:none;">
			<button type="button">+ more</button>
		</div>
	
	</div>
				

		
</div>
	
	
	
<%@ include file="myPageBottom.jspf" %>