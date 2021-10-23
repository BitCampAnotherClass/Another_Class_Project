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
.main_container{ background-color:pink;
	width:1200px;
	height:1200px;
	margin:0 auto;
}
.top_container{ background-color:lightblue;
	width:100%;
	height:200px;
}
#price_show{ border:3px solid red;
	width:150px;
	height:30px;
}
#slider-range{background-color:white; 
	width:600px;
	height:10px;
	
}
.ui-slider-range{
	background-color:#FF385C;
	color:red;
}
.middle_container{ background-color:lightgreen;
	width:100%;
	height:1000px;
}
.middle_top_select{ background-color:lightgray;
	height:80px;
	widht:100%;
}
.class_div{ border:2px dotted gray;
	float:left;
	width:23%;
	height:30%;
	margin:1% 1% 1% 1%;
	border-radius:8px;
	padding:5px 5px 5px 5px;
}
.img_div{ border:1px solid red;
	width:100%;
	height:70%;
	overflow: hidden;
	border-radius:8px;
}
.img_size{
	width:100%;
}
.info_div{border:1px solid blue; /* 정보 div */
	width:100%;
	height:30%;
	padding:5px 5px 5px 15px;    
	border-radius:8px;
}
.info_div>ul{background-color:lightblue;
	float:right;
	width:100%;
}
.info_div li{
	text-align:right;
	width:100%;
	
}
.info_div>ul>li:nth-child(1)>div {background-color:pink;  /* 카테고리 정보 div */
	text-align:left;
}
.info_div>ul>li:nth-child(2) {
	font-weight: 600;
}
.info_div>ul>li:nth-child(3) {
	font-weight: 400;
}

.info_div>ul>li:nth-child(4) {
	font-weight: 400;
}
</style>

<div class="main_container">
	<form action="">
		<div class="top_container">
			<div>
				<select>
					<option value="">ㄹㄹㄹ</option>  <!-- 디비 반복 -->
				</select>
				<select>
					<option value="">ㅇㅇㅇ</option>  <!-- 디비 반복 -->
				</select>
				<div>
					<input type="text" id="min_price_show" readonly name="class_price">
					<div id="slider-range"></div>
					<input type="text" id="max_price_show" readonly>
				</div>
			</div>
		</div>
	</form>
	<div class="middle_container">
		<div class="middle_top_select"> <!--  -->
			
		</div>
		<c:forEach var="vo" items="${cla }">
		<div class="class_div">
			<div class="img_div">
				<img class="img_size" src="<%=request.getContextPath()%>/img/kimin/uploadimg.jpg">
			</div>
			<div class="info_div">
				<ul>
					<li><div>${vo.category_no }</div></li>
					<li>${vo.class_name }</li>
					<li>${vo.class_addr1 }</li>
					<li>${vo.class_price }</li>
				</ul>
			</div>
		</div>
		</c:forEach>
	</div>
</div>
