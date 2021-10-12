<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>  

<!-- summernote -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<!-- 데이트픽커 -->
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
<!-- 구글맵 -->
<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBZO3MrykFpNpemqO2zPtG5M9ADUXSoApw&callback=initMap"></script>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
var count=0;
var iitest=0;
$(function(){
	$('input[type="checkbox"][name="categoryL"]').click(function(){
		 
		  if($(this).prop('checked')){
		 	$('#smallCategoryDiv').css("display","block");
		 	
		    $("input[type='checkbox'][name='categoryL']").prop("checked",false);
		 
		    $(this).prop('checked',true);
		 
		    }else if($("input[type='checkbox'][name='categoryL']").is("checked") == false) {
		    	$('#smallCategoryDiv').css("display","none");
		    	$("input[type='checkbox'][name='categoryS']").prop("checked",false);
		    }
	});
	$(".flatpickrCalender").flatpickr({
		inline : true,
		mode: "multiple",
		dateFormat: " Y - m - d , H : i ",
		minDate:"today",
		maxDate: new Date().fp_incr(180),
		enableTime: true,
		altInput: true,
		altFormat: " Y - m - d , H : i ",
		onChange(selectedDates, dateStr, instance) {
            var array=selectedDates;
            if(array.length <= 10){
            	$('#putDateTime').html(instance.altInput.value);
            	
            }else if(array.length >= 11){
            	var count = array.length - 10;
            	alert("선택"+count+"를 초과하였습니다\n"+count+"개를 취소해 주십시오.");
            	$(".flatpickr-day.selected").css("background","#FF385C");
            	//$(".flatpickr-day").css("pointer-events","none");*/ 캘린더 클릭못하게 막을수있음
            }
       }
	});	
	$("#class_tagButton").click(function(){
			if(count < 5){
				if($('#class_tag').val() !== ""){
					iitest++;
					$("#tagInsert").append("<div style='float:left' id='tagInsertInner"+iitest+"'>"+"#"+$('#class_tag').val()+"<input type='button' value='x' id='divdel' onclick='deleteDiv()'>"+"</div>");
					count++;
				}else{
					alert("태그로 사용할 문구를 입력해주세요")
				}
			}else{
				alert("5개 태그 모두 선택하였습니다.")
			}
			$('#class_tag').val("");
	});
});
///////////////////////////////
function deleteDiv(){
	var div = document.getElementById('tagInsertInner'+iitest);
	div.remove();
	count--;
	iitest--;
	console.log(count);
};
/////////////////////////////////////////////
$(document).ready(function() {
		  $('#summernote').summernote({
  				height:800,
  				placeholder:'클래스 소개글과 이미지를 넣어 작성하세요 ',
  				lang: "ko-KR",	
  				minHeight: 800, 
  				maxHeight:800,   
  			});
});
//////////////////////////////////////////////
function execDaumPostcode() {
   	var width = 500;
  	var height = 300;
  	
	new daum.Postcode({
    	width: width,
    	height: height,
    	popupTitle:'anotherclass',
        oncomplete: function(data) {
        	
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("roadAddress").value = roadAddr;
            
            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open({//embed('classAddressIframe'); 팝업아닌 넣어서 표시
    	 left: (window.screen.width / 2) - (width / 2),
    	 top: (window.screen.height / 2) - (height / 2)
    });
}
////////////////////////////////////////
var latitude;
	var longitude;
	var nameGeo;
	var addr;
	var geoImg;
	var bringAddress;
	function setMapReset(){
		latitude = 37.5729503;
		longitude = 126.9793578;
		bringAddress = document.getElementById("roadAddress").value;
		
		nameGeo = [bringAddress];//지명
		addr = ['https://www.naver.com'];//url주소
		geoImg = ['img/kimin/2.jpg'];//img
		
		//image
	}
/////////////////////////////////
	var map;
	var geoCoder;
	var marker;
/////////////////////////////	
function initMap(){
		setMapReset();
		
		var myCenter = new google.maps.LatLng(latitude, longitude);
		var option = {
				center : myCenter,
				zoom:12,
				mapTypeId:google.maps.MapTypeId.ROADMAP
				
		}
		
		map = new google.maps.Map(document.getElementById("googleMap"), option);
		
		geoCoder = new google.maps.Geocoder();
		
		for(var i=0; i<nameGeo.length; i++){
			//				지명, 주소, 이미지
			setMapPosition(nameGeo[i], addr[i], geoImg[i]);
		}
		
	}//initMap
///////////////////////////////////////	
function setMapPosition(name2, addr2, geoImg2){
		//지명을 이용하여 마커, 대화상자를 geoCoder 객체에 셋팅
		
		geoCoder.geocode({'address':name2},    //마커를 표시할 주소
			function(results, status){
				if(status == 'OK'){
					map.setCenter(results[0].geometry.location);
					
					//마커 표시
						marker = new google.maps.Marker({
						map:map,
						icon:'img/kimin/map_pin.png',
						title: results[0]['formatted_address'], //마커에 마우스 오버를 하면 주소가 표시된다.
						position:results[0].geometry.location
						
					});
						//대화상자: 위도, 경도, 이미지-> url주소 이동하기
						var la =  results[0]['geometry']['location']['lat']();//위도
						var lo =  results[0]['geometry']['location']['lng']();//경도
						
						var popMsg = "주소 : "+results[0]['formatted_address']+'<br/>';
							if(addr2!=""){
							popMsg += "<a href='"+addr2+"'><img src='"+geoImg2+"' width='100' height='40'/></a>";
							}
						var info = new google.maps.InfoWindow({content:popMsg});
						
						google.maps.event.addListener(marker, 'click', function(){info.open(map, marker)});
						
				}else{
					console.log("존재하지않는 지명입니다.")
				}//if
			}//function
		);//geocoder
		
	}//function setMapPosition()
function mapSearch(){
	var searchName = document.getElementById("roadAddress").value;
	if(searchName==""){
		alert("주소검색을 먼저 진행해 주세요");
	return; //리턴은 중단 명령어
	}
	setMapPosition(searchName,"","");
}
function feeComma(){
	
}
	

	
</script>	
<style>
.container h1{color:gray; margin-bottom:20px; font-weight:600;}
.container span{font-size:1.2em; font-weight:600; }
/* body{ background-color:#FFF5F5;} */
kimin{ color:#FF385C; }
kimin2{font-size: 1.3em; color:gray; margin-left:5px;}

#class_name{
	height:50px; width:100%;
}
#class_short{
	height:100px; 
	padding-top:15px; 
	resize:none;
}
.followDiv li{
	font-size:1.2em;
 	font-weight:500;
 	color:gray;
} 
.descriptionUl{
	background-color:#f1f1f1;
	width:100%;
	height:120px;
	border-radius:8px;
	padding:10px 0px 10px 20px;
	margin-bottom:20px;
}
.dsctitle{
	color:gray;
}
.descriptionUl>li{
	font-size:1em;
}
.descriptionUl li:not(.dsctitle){
	margin-left:15px;
	font-weight:500;
	color:gray;
	list-style-type:circle;
}
.inputCommonClass{
	width:100%; 
	margin-top:20px;
	margin-bottom:20px;
	border:2px solid lightgray;
	border-radius:8px;
	padding:0px 0px 0px 20px;
	font-size:1.2em;
}
.container{
	width:1200px;
	height:5150px; 
	margin:0 auto;
	padding:0px;
}
.followDiv{background-color:;
	width:100%;
	height:35px;
	border-bottom:3px solid lightgray;
	margin-top:30px;
	margin-bottom:30px;
}
.followDiv>ul>li{
	float:left;
	width:10%;
}
.followDiv>ul>li:nth-child(1){
	margin-left:30px;
}
.followDiv>ul>li:nth-child(8){
	width:17%;
}
.followButton{
	margin-right:5px;
	background-color:#FF385C;
	width:30px;
	height:30px;
	border-radius:8px;
	font-weight:800;
	line-height:30px;
	text-align:center;
	float:left;
}
.classCommonDiv{
	width:100%; 
	height:50px;
	border-bottom:3px solid lightgray;
	text-align:left;
	line-height:50px;
}
.classCategoryDiv{
	width:100%;
	height:100px;
	border:2px solid lightgray;
	border-radius:8px;
	margin-top:20px;
	margin-bottom:20px;
	padding:15px 15px 15px 15px; 
	font-size: 1.2em;
}
.classCategoryDiv>ul{ background-color:; 
	width:100%;
	height:100%;
	text-align: center;
}
.classCategoryDiv li{
	font-weight: 500;
	color:gray;	
	float:left;
	width:15%;
}

input[type="checkbox"]{cursor: pointer;-webkit-appearance: none;-moz-appearance: none;appearance: none;outline: 0;background: white;height: 16px;width: 16px;border: 1px solid #FF385C;}
input[type="checkbox"]:checked {background: #FF385C;}
input[type="checkbox"]:hover {background: #FF385C;}
input[type="checkbox"]:checked:after {display: block;}
input[type="checkbox"]:after {content: '';position: relative;left: 40%;top: 20%;width: 15%;height: 40%;border: solid #fff;border-width: 0 2px 2px 0;transform: rotate(45deg);display: none;}

#smallCategoryDiv{
	display:none; 
}
.classImgDiv{
	width:100%;
	height:560px;
	border:2px solid lightgray;
	border-radius:8px;
	margin-top:20px;
	margin-bottom:20px;
	padding:20px 0px 0px 0px; 
	font-size: 1.2em;
	text-align:center;
}
#imgThumbDiv{
	border-radius:8px;
	width:400px;
	height:480px;
	border:3px solid lightgray;
	margin:0 auto;
}
#imgThumbDiv img{
	width:100%;
	height:100%;
}
.buttonClass{
	font-size:1.2em;
	background-color: white;
	color: #FF385C;
	font-weight:500;
	border:3px solid lightgray;
	border-radius:8px;
}
.buttonClass:hover{
	cursor: pointer;
	background-color: #FF385C; 
	color:white;
}
.classImgDiv>input[type=button]{
	width:400px;
	height:40px;
}
#summernoteForm{
	margin-top:20px;
	margin-bottom:20px;
}
#descriptionDetail{
	height:150px;
}
.classDate{border:2px solid lightgray;
	width:100%;
	height:380px;
	border-radius:8px;
	margin-top:20px;
	margin-bottom:20px;
	padding:20px 0px 0px 20px; 
	font-size: 1.2em;
	line-height: 30px;
}
.classDate>ul{background-color:;
	width:610px;
	height:340px;
	margin:0 auto;
	padding:0, 0, 0, 0;
}
.classDate li{
	float:left;
}
#putDateTime{
	background-color:#f1f1f1;
	width:240px;
	height:340px;
	color:#FF385C; 
	font-weight:600;
	font-size:1em;
	text-align: center;
	margin-left: 50px;
	line-height: 34px;
	border-radius:8px;
}
#putDateTime>div{
	color:#FF385C;
	margin-top:150px;
}
.flatpickrCalender{
	display: none;
}
.classAddress{
	width:100%;
	height:180px;
	border:2px solid lightgray;
	border-radius:8px;
	margin-top:20px;
	margin-bottom:20px;
	padding:20px 0px 0px 20px; 
	font-size: 1.2em;
	line-height: 30px;
}
.classAddress input[type=text]{
	width:400px;
	height:50px;
	font-size: 1.2em;
	border-radius:8px;
	font-weight:500;
	border:3px solid lightgray;
	text-align: center;
}
.classAddress input[type=button]{
	width:400px;
	height:50px;
}
#classAddressInnerDiv{border:;
	margin:0 auto;
	width:815px;
	height:115px;
}
#classAddressInnerDivGoogle{
	height:500px;
}
#googleMap{
	width:1160px;
	height:460px;
}
#serchOnGoogle{
	border:3px solid lightgray;
	width:805px;
	border-radius:8px;
	height:35px;
	margin-top:3px;
	color: #FF385C;
	font-weight:500;
	font-size: 1em;
	background-color: white;
}
#serchOnGoogle:hover {
	cursor: pointer;
	background-color:#FF385C;
	color:white;
}
#class_fee, #class_nop{
	height:50px;
	width: 480px;
	text-align: right;
	padding:0px 50px 0px 0px;
}
#classFee>span{
	color:gray;
	margin-left:10px;
}
#class_tag{
	width:500px;
	height:50px;
	margin-left:320px;
	text-align: right;
	padding:0px 50px 0px 0px;
}
#class_tagButton{
	width:100px;
	height:50px;
}
#tagInsert{border:2px dotted lightgray;
	width:800px;
	height:42px;
	margin:0 auto;
	margin-bottom: 20px;
}
#tagInsertInner1,#tagInsertInner2,#tagInsertInner3,#tagInsertInner4,#tagInsertInner5{
	width:18%;
	height:40px;
	border-radius:8px;
	background-color:#FF385C;
	color:white;
	font-size: 1.2em;
	margin-left:1%;
	margin-right:1%;
	padding:8px 0px 0px 15px;
}
#divdel{
	background: #FF385C;
	border-radius:8px;
	border-color:#FF385C;
	color: white;
	font-weight: 800;
	width:30px;
	height:25px;
	cursor: pointer;
	margin-left:10px;
}
.classApplyDiv{
	border-top: 3px solid lightgray;
}
#class_apply{
	margin-top:20px;
	width:100%;
	height:80px;
	font-size: 1.5em;
	font-weight: 600px;
}
</style>
<form>
<div class="container">
	<h1>클래스개설</h1>
	<div class="followDiv">
		<ul>
			<li><div class="followButton" style="color:white">1</div><a href="#f1"> 클래스명</a></li>
			<li><div class="followButton" style="color:white">2</div><a href="#f2"> 간단소개</a></li>
			<li><div class="followButton" style="color:white">3</div><a href="#f3"> 카테고리</a></li>
			<li><div class="followButton" style="color:white">4</div><a href="#f4"> 썸네일</a></li>
			<li><div class="followButton" style="color:white">5</div><a href="#f5"> 소개</a></li>
			<li><div class="followButton" style="color:white">6</div><a href="#f6"> 일정</a></li>
			<li><div class="followButton" style="color:white">7</div><a href="#f7"> 상세</a> 주소</li>
			<li><div class="followButton" style="color:white">8</div><a href="#f8"> 수강료 및 최대인원</a></li>
			<li><div class="followButton" style="color:white">9</div><a href="#f9"> #태그</a></li>
		</ul>
	</div>
	<div class="classCommonDiv" id="f1">
		<span><kimin>*</kimin> 1) 클래스명 입력 <kimin>(필수)</kimin></span>
	</div>
	<div >
		<input type="text" name="class_name" class="inputCommonClass" placeholder="클래스명을 입력하세요" id="class_name">
		<ul class="descriptionUl">
			<li class="dsctitle">작성 Tip</li>
			<li>어떤 수업인지 한 눈에 알수있는 클래스 이름</li>
			<li>지역 또는 클래스 성격(원데이 클래스/정규 클래스)등을 뒤에 적어 주셔도 좋습니다</li>
			<li>등록 후 수업시작 전까지 수정이 가능합니다</li>
		</ul>
	</div>
	<div class="classCommonDiv" id="f2">
		<span><kimin>*</kimin> 2) 클래스 간단 소개 <kimin>(필수)</kimin></span>
	</div>
	<div>
		<textarea name="class_short" class="inputCommonClass" placeholder="클래스 간단 소개를 &#13;&#10;입력하세요" id="class_short"></textarea>
		<ul class="descriptionUl">
			<li class="dsctitle">작성 Tip</li>
			<li>클래스 요약 설명 작성란 입니다</li>
			<li>제목을 보완해 줄 수 있는 설명을 적어주세요</li>
			<li>다음 스텝에서 자세한 클래스 소개란이 있으므로 간단히 작성해 주셔도 좋습니다</li>
		</ul>
	</div>
	<div class="classCommonDiv" id="f3">
		<span><kimin>*</kimin> 3) 클래스 카테고리 <kimin>(필수)</kimin></span>
	</div>
	<div class="classCategoryDiv">
		<ul>
			<li><input type="checkbox" name="categoryL" value="" class="categoryL"> 캔들/디퓨져</li> <!-- 반복문 -->
			<li><input type="checkbox" name="categoryL" value="" class="categoryL"> 캔들/디퓨져</li> <!-- 반복문 -->
			<li><input type="checkbox" name="categoryL" value="" class="categoryL"> 캔들/디퓨져</li> <!-- 반복문 -->
			<li><input type="checkbox" name="categoryL" value="" class="categoryL"> 캔들/디퓨져</li> <!-- 반복문 -->
			<li><input type="checkbox" name="categoryL" value="" class="categoryL"> 캔들/디퓨져</li> <!-- 반복문 -->
			<li><input type="checkbox" name="categoryL" value="" class="categoryL"> 캔들/디퓨져</li> <!-- 반복문 -->
			<li><input type="checkbox" name="categoryL" value="" class="categoryL"> 캔들/디퓨져</li> <!-- 반복문 -->
		</ul>
	</div>
	<div id="smallCategoryDiv">
		<div class="classCommonDiv">
			<span><kimin>*</kimin> 3-1) 클래스 서브 카테고리 <kimin>(필수)</kimin></span>
		</div>
		<div class="classCategoryDiv">
			<ul>
				<li><input type="checkbox" name="categoryS"> 캔들/디퓨져</li> <!-- 반복문 -->
				<li><input type="checkbox" name="categoryS"> 캔들/디퓨져</li> <!-- 반복문 -->
				<li><input type="checkbox" name="categoryS"> 캔들/디퓨져</li> <!-- 반복문 -->
				<li><input type="checkbox" name="categoryS"> 캔들/디퓨져</li> <!-- 반복문 -->
				<li><input type="checkbox" name="categoryS"> 캔들/디퓨져</li> <!-- 반복문 -->
			</ul>
		</div>
	</div>
	<div class="classCommonDiv" id="f4">
		<span><kimin>*</kimin> 4) 클래스 썸네일 <kimin>(필수)</kimin></span>
	</div>
	<div class="classImgDiv">
			<div id="imgThumbDiv"><img src="img/kimin/uploadimg.png" ></div>
			<input type="button" name="imgThumb" value="클래스 썸네일 이미지 등록" class="buttonClass">
	</div>
	<div>
		<ul class="descriptionUl">
			<li class="dsctitle">작성 Tip</li>
			<li>이미지 비율 가로=1 : 세로=1.2 를 추천드립니다</li>
			<li>너무 큰 용량은 업로드 되지 않을 수 있습니다</li>
			<li>클래스 소개에서 여러장의 이미지를 소개글과 추가 할 수 있습니다</li>
		</ul>
	</div>
	<div class="classCommonDiv" id="f5">
		<span><kimin>*</kimin> 5) 클래스 소개 <kimin>(필수)</kimin></span>
	</div>
	<div>
		<div id="summernoteForm">
  			<textarea id="summernote" name="editordata"></textarea>
		</div>
	</div>
	<div>
		<ul class="descriptionUl" id="descriptionDetail">
			<li class="dsctitle">작성 Tip 보기 </li>
			<li>클래스를 자세히 설명해 주세요</li>
			<li>최소 2줄 이상 작성해 주세요</li>
			<li>내용 복사 & 붙여넣기의 경우 일부 화면이 깨질 수 있습니다</li>
			<li>사진을 첨부 할 수 있습니다</li>
		</ul>
	</div>
	<!-- ////////////////////// -->
	<div class="classCommonDiv" id="f6">
		<span><kimin>*</kimin> 6) 클래스 일정 <kimin>(필수)</kimin></span>
	</div>
	<div class="classDate">
		<ul>
			<li><input class="flatpickrCalender"/></li>
			<li id="putDateTime"><div>선택하신 날짜가 표시됩니다</div></li>	
		</ul>
	</div>
	<div>
		<ul class="descriptionUl">
			<li class="dsctitle">작성 Tip</li>
			<li>클래스 개설 일정과 시간을 선택해 주세요</li>
			<li>최대 10일 까지 선택 가능합니다</li>
			<li>10개 선택 초과시 빨강색으로 표시되며 선택한 요일을 다시 클릭하면 취소됩니다</li>
		</ul>
	</div>
	<div class="classCommonDiv" id="f7">
		<span><kimin>*</kimin> 7) 클래스 상세 주소 <kimin>(필수)</kimin></span>
	</div>
	<div class="classAddress">
		<div id="classAddressInnerDiv">
			<input type="text" id="postcode" placeholder="우편번호" >
			<input type="button" onclick="execDaumPostcode()" value="주소검색" class="buttonClass"><br>
			<input type="text" id="roadAddress" placeholder="도로명주소" >
			<span id="guide" style="color:#999;display:none"></span>
			<input type="text" id="roadAddress" placeholder="상세주소" />
			<!-- 구글맵 -->
			<input id="serchOnGoogle" type="button" value="지도에 위치표시 하기" onclick="mapSearch()"/>
		</div>
	</div>
	<div class="classAddress" id="classAddressInnerDivGoogle">
		<div id="googleMap"></div>
	</div>
	<div>
		<ul class="descriptionUl">
			<li class="dsctitle">작성 Tip</li>
			<li>클래스 주소를 입력해주세요</li>
			<li>주소를 입력하시면 지도상에 위치로 등록됩니다</li>
			<li>검색결과가 정확 하지 않으면 수정해 주세요</li>
		</ul>
	</div>
	<div class="classCommonDiv" id="f8">
		<span><kimin>*</kimin> 8) 클래스 수강료 및 최대인원 <kimin>(필수)</kimin></span>
	</div>
	<div id="classFee">
		<span> 수강료 : </span><input type="text" name="class_fee" class="inputCommonClass" placeholder="희망 수강료를 입력하세요" id="class_fee"><kimin2>원</kimin2>
		<span> 최대인원 : </span><input type="text" name="class_nop" class="inputCommonClass" placeholder="수강가능 최대인원을 입력하세요" id="class_nop"><kimin2>명</kimin2>
	</div>
	<div>
		<ul class="descriptionUl">
			<li class="dsctitle">작성 Tip</li>
			<li>수강료와 최대인원을 입력해주세요</li>
			<li>수강료와 최대인원은 숫자로만 입력해 주세요</li>
			<li>ex)200,000 ex)30 --->원, 명은 입력하지마세요 </li>
		</ul>
	</div>
	<div class="classCommonDiv" id="f9">
		<span>* 9) 검색 #태그 </span>
	</div>
	<div id="classFee">
		<input type="text" name="class_tag" class="inputCommonClass" placeholder="#없이 태그를 입력하세요" id="class_tag">
		<input type="button" value="추가" id="class_tagButton" class="buttonClass"><br/>
		<div id="tagInsert"></div>
	</div>
	<div>
		<ul class="descriptionUl">
			<li class="dsctitle">작성 Tip</li>
			<li>5개 태그까지 추가 할 수 있습니다</li>
			<li># 표시 없이 입력해주세요</li>
			<li>추가버튼을 누르면 항목이 밑에 표시됩니다 </li>
		</ul>
	</div>
	<div class="classApplyDiv">
		<input type="submit" value="클래스 등록신청" name="class_apply" id="class_apply" class="buttonClass">
	</div>
</div>
</form>




