<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
<script>
$( function() {
    $( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 150000,
      values: [ 20000, 60000 ],
      slide: function( event, ui ) {
        $( "#min_price_show" ).val(ui.values[ 0 ]);
        $( "#max_price_show" ).val(ui.values[ 1 ]);
      }
    });
    
    $( "#min_price_show" ).val( $( "#slider-range" ).slider( "values", 0 ));
    $( "#max_price_show" ).val( $( "#slider-range" ).slider( "values", 1 ));
  });
///////////제이쿼리끝

</script>

<style>
.main_container{ background-color:;
	width:1200px;
	height:1200px;
	margin:0 auto;
}
.top_container{ background-color:;
	width:100%;
	height:130px;
	margin-bottom:10px;
}
.select_boxes{background-color:;
	width:420px;
	float: right;
	margin:30px 10px 0 0;
}
.select_boxes>select{background-color:white;
 	border:1px dotted gray;
	height:30px;
	width:49.5%;
	border-radius:8px;
	font-weight: 500;
	color:gray;
}
.select_boxes>select>option:nth-child(1){
	text-align: center;
}
.select_boxes>select>option{
	background-color: white;
}
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
	height:30px;
	widht:100%;
	margin-bottom:10px;
}
.middle_top_select>ul{background-color:;
	width:150px;
	height:30px;
	float: right;
	margin-right: 10px;
}.middle_top_select>ul>li{
	text-align: center;
	float: right;
	font-size: 0.8em;
	font-weight: 500;
	line-height: 40px;
	color:gray;
}

.middle_top_select>ul>li:not(:nth-child(2)){
	width:45%;
}
.class_div{ border:1px dotted gray;
	float:left;
	width:23%;
	height:330px;
	margin:1% 1% 1% 1%;
	border-radius:8px;
	padding:5px 5px 5px 5px;
}
.img_div{ border:1px dotted gray;
	width:100%;
	height:55%;
	border-radius:8px;
	margin:0 auto;
	overflow:hidden;
	
}
.img_size{
	width:100%;
	heigth:100%;
	object-fit:cover;
}
.info_div{border:1px dotted gray;/* 정보 div */
	width:100%;
	height:40%;
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
.info_div>ul>li:nth-child(1)>div {background-color:#FF385C; /* 카테고리 정보 div */
	border-radius:8px;
	display:inline-block;
	padding:0 10px 0 10px;
	color:white;
}
.info_div>ul>li:nth-child(2) {
	font-weight: 600;
	overflow: hidden;
	display:inline-block;
	max-height: 48px;
}
.info_div>ul>li:nth-child(3) {
	font-weight: 400;
}

.info_div>ul>li:nth-child(4) {
	font-weight: 400;
}
.info_div>ul>li:nth-child(5) { /* 클래스 넘버 숨겨둠*/
	color:red;
	display: none;
}
</style>

<div class="main_container">
	<form action="">
		<div class="top_container">
			<div class="select_boxes">
					<select>
						<option>카테고리</option>
						<c:forEach var="cate" items="${cla }">
							<option >${cate.category_no }</option>  <!-- 디비 반복 -->
						</c:forEach>
					</select>
					<select>
						<option>지역</option>
						<c:forEach var="loca" items="${cla }">
							<option >${loca.class_addr1 }</option>  <!-- 디비 반복 -->
						</c:forEach>
					</select>
					<div class="select_range">	
						<ul>
							<li><input class="priceRangeBox" type="text" id="min_price_show" readonly name="min_price_show"></li>
							<li><div id="slider-range"></div></li>
							<li><input class="priceRangeBox" type="text" id="max_price_show" readonly name="max_price_show"></li>
						</ul>
					</div>
				<input type="submit" value="검색" class="priceRangeBox">	
			</div>
		</div>
	</form>
	<div class="middle_top_select"> <!--  -->
		<ul>
			<li>낮은 가격순</li>
			<li>|</li>
			<li>최근 등록순</li>
		</ul>
	</div>
	<div class="middle_container">
		<c:forEach var="vo" items="${cla }">
		<div class="class_div">
			<div class="img_div">
				<img class="img_size" src="<%=request.getContextPath()%>/img/kimin/maca.png">
			</div>
			<div class="info_div">
				<ul>
					<li><div>${vo.category_no }</div></li>
					<li>${vo.class_name }</li>
					<li>${vo.class_addr1 }</li>
					<li>${vo.class_price }원</li>
					<li>${vo.class_no }</li> <!-- 클래스 넘버 숨겨둠 -->
				</ul>
			</div>
		</div>
		</c:forEach>
	</div>
</div>
