<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	.main-ah3{
	margin:65px 30px 30px;
	text-align:left;
	color:#333;
	float:left;
	display: block;
    font-size: 32px;
    margin-block-start: 0.9rem;
    margin-block-end: 0.9rem;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

.search-bbar{
	float:right;
	margin : 65px 30px 30px 0;
	width: 270px;
    height: 40px;
    outline: none;
    border: 1px solid #999;
    border-radius: 40px;
    padding: 0 15px;
    font-size: 15px;
}
.a{
	width:100%;
	height:100px;

}
.creator-homee{
	float:right;
	margin : 65px 30px 20px 0;
	background: #FF385C;
	text-align: center;
	
	border: 0;
    box-shadow: 0;
    display: block;

    padding: 1% 2.5%;
    font-size: 15px;
    text-transform: uppercase;
    text-transform: capitalize;
    font-weight: bold;
    background: #FF385C;
    color: #fff;
    cursor: pointer;
}
.creator-homee>a{
    font-size: 15px;
    text-transform: uppercase;
    text-transform: capitalize;
    font-weight: bold;
    background: #FF385C;
    color: #fff;
    cursor: pointer;
}

.creator-homeee{
	float:right;
	margin : -700px 540px 20px 0;
	background: #FF385C;
	text-align: center;
	
	border: 0;
    box-shadow: 0;
    display: block;

    padding: 1% 2.5%;
    font-size: 15px;
    text-transform: uppercase;
    text-transform: capitalize;
    font-weight: bold;
    background: #FF385C;
    color: #fff;
    cursor: pointer;
}
</style>


<div >
			<section class="main-review inner-lg">
			
			<div class="a">
				<h3 class="main-ah3">커뮤니티</h3>
		<li class="creator-homee"><a href="CommunityNewContent">게시글 작성</a></li>
		
					<input class="search-bbar" type="text" placeholder="#태그를 이용하여 검색하세요" />
					
				</div>	
		</section>
		</div>

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>

<script>

 ///////////////////////////////// 아작스  
	var classNo_arry = new Array();
 	var	className_arry = new Array();
 	var classAddr1_arry = new Array();
 	var classPrice_arry = new Array();
 	var classThumb_arry = new Array();
 	var classTag_arry = new Array();
 	var class_content_arry = new Array();
 	var category_no = new Array();
	var category_name = new Array();
	var startDate_arry = new Array();
	var listCnt = 4;
//////////////////////////////////// 낮은 가격순	
$(()=>{
	 function sortByPrice(){
		  var url = '<%=request.getContextPath()%>/commu_main/list';
		  var params = {"no": 0};
		  $.ajax({
			 	url : url,
				data : params,
				async:false,
				success:function(r){
					var rr=$(r);
					$('.middle_container').html('');
					var classDiv = '';
					rr.each(function(idx){
						
						classNo_arry[idx] = rr[idx].community_no;
		 				className_arry[idx]= rr[idx].img_con1;
		 			 	//classAddr1_arry[idx]= rr[idx].class_addr1;
		 			 	//classPrice_arry[idx]= rr[idx].class_price;
		 			 	classThumb_arry[idx]= rr[idx].class_thumb;
		 			 	classTag_arry[idx]= rr[idx].community_tag;
		 			 	//class_content_arry[idx]= rr[idx].class_content;
						//category_name[idx]= rr[idx].category_name;
						startDate_arry[idx]=rr[idx].writedate;
						
						if( idx <= (listCnt-1)){
	
						classDiv = '<div class="class_div"><a href="<%=request.getContextPath()%>/CommunityContentDetail?community_no=' + classNo_arry[idx] + '" target="">'
						classDiv += '<div class="img_div">';
						classDiv +=	'<img class="img_size" src="<%=request.getContextPath()%>/img/kimin/maca.png">';
						classDiv += '</div>';
						classDiv +=	'<div class="info_div">';
						classDiv += '<ul>';
		
						classDiv += '<li>'+className_arry[idx]+'</li>';
						classDiv +=	'<li>'+classTag_arry[idx]+'</li>';
						classDiv +=	'<li>'+startDate_arry[idx]+'</li>';
		
						classDiv += '</ul>';
						classDiv +='</div></a>';
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
			                     classDiv += '<a href="<%=request.getContextPath()%>/CommunityContentDetail?community_no=' + classNo_arry[idx] + '" target="">'
			                     classDiv +=   '<img class="img_size" src="<%=request.getContextPath()%>/img/kimin/maca.png">';
			                     classDiv += '</a>'
			                     classDiv += '</div>';
			                     classDiv +=   '<div class="info_div">';
			                     classDiv += '<ul>';
			                     classDiv += '<li>'+className_arry[idx]+'</li>';
			         			classDiv +=	'<li>'+classTag_arry[idx]+'</li>';
								classDiv +=	'<li>'+startDate_arry[idx]+'</li>';
							
			                     classDiv += '</ul>';
			                     classDiv +='</div>';
			                     classDiv +='</div>';
			                     $('.middle_container').append(classDiv);
			                     $('.no-result-txt').hide(); // 결과 없음 내용 숨기기
			                     $('.more').show();
			                  if(idx >= r.length-1){ // 남은 클래스가 없으면 more 버튼 숨기기
			                        $('.more').hide();
			                     }
			                  }
			               });
			                  });
			         },error:function(e){
			            console.log("ajax 에러")
			         }
			      });
			  };
	  sortByPrice();
});
 
</script>

<style>
.main_container{ background-color:;
	width:1200px;
	height:1400px;
	margin:0 auto;
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
	color:#FF385C;
	display: table-cell;
	font-weight: 500;
	font-size: 2em;
	line-height: 100px;
}

input[type=submit]{
	color:#FF385C;
	cursor: pointer;
	float: right;
	width:100%;
}
input[type=submit]:hover{
	background-color:#FF385C;
	color:white;
}

.middle_container{ background-color:;
	width:100%;
	height:1100px;
}
.middle_top_select{ background-color:;
	
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
.class_div{ border:1px solid lightgray;
	float:left;
	width:23%;
	height:350px;
	margin:1% 1% 1% 1%;
	border-radius:8px;
	padding:10px 10px 10px 10px;
}
.img_div{ border-bottom:1px solid lightgray;
	
	height:250px;
	padding-bottom : 5px;
	margin:0 auto;
	overflow:hidden;
	
}
.img_size{
	width:100%;
	height:100%;
	
	object-fit:cover;
}
.info_div{/* 정보 div */
	width:100%;
	height:15%;
	padding:3px 10px 10px 3px;    
	border-radius:8px;
	margin-top:3%;
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
	color:#FF385C;
}
.info_div>ul>li:nth-child(3) {
	font-weight: 400;
	color:gray;
	
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
	color:#FF385C;
}
.info_div>ul>li:nth-child(6) { /* 클래스 넘버 숨겨둠*/
	display: none;
}
.price_sort, .apply_sort{
	cursor: pointer;
}
</style>

<div class="main_container">

	<div class="middle_top_select"> <!--  -->
		
	</div>
	
	<div class="middle_container">
		   <div class="more" style="display:none;">
      <button type="button" class="creator-homeee">+ more</button>
   </div>
		<c:forEach var="vo" items="${cla }">

		<div class="class_div">
			<div class="img_div">
				<a href="CommunityContentDetail">
					<img class="img_size" src="<%=request.getContextPath()%>/img/kimin/maca.png">
				</a>
			</div>
		</div>
			
			<div class="info_div">
				<ul>
					
					<li>${vo.img_con2 }</li>
					<li>${vo.img_con3 }</li>
		
					<li>${vo.community_no }</li> <!-- 클래스 넘버 숨겨둠 -->
					<li>${vo.writedate }</li> 
				
				</ul>
			</div>
			
		</div>
	
		</c:forEach>
	</div>
		   <div class="more" style="display:none;">
      <button type="button" class="creator-homeee">+ more</button>
   </div>
</div>
	  