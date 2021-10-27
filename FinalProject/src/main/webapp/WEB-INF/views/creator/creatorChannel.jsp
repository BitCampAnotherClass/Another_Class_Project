<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>  
<!-- summernote -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>


<script>
var size = 250;
const content  = '${channel.creator_content}';
console.log(content)
$(function(){
	$('#summer').summernote({
		height:size,
		placeholder:content,
	  	lang:"ko-KR",	
	  	minHeight: size, 
	  	maxHeight:size,
	  	callbacks: {	//여기 부분이 이미지를 첨부하는 부분
		onImageUpload : function(files) {
		uploadSummernoteImageFile(files[0],this);
		},
			onPaste: function (e) {
				var clipboardData = e.originalEvent.clipboardData;
				if (clipboardData && clipboardData.items && clipboardData.items.length) {
					var item = clipboardData.items[0];
					if (item.kind === 'file' && item.type.indexOf('image/') !== -1) {
						e.preventDefault();
					}
				}
		 	}
	  	}
	});
});

var tbu = "등록";
var tbu2 = "수정";
$(this).on("propertychange change keyup paste input",function(){
	if($('.note-editable>p').text() !=="" && $('.divideDivProfile').css('display') !=='none' ){
		$('#modifyButton').val(tbu2);
	}else{
		$('#modifyButton').val(tbu);
	}
});

////////////////////////////////////////////////

function summernote(){
	$('.divideDivResult').css('display','none');
	$('.divideDivClass').css('display','none');
	$('.divideDivProfile').css('display','block');
	$('#modifyButton').css('display','block');
	};
function myClassChange(){
	$('.divideDivResult').css('display','none');
	$('.divideDivProfile').css('display','none');
	$('.divideDivClass').css('display','block');
	$('#modifyButton').css('display','none');
};	
function resultChange(){
	$('.divideDivProfile').css('display','none');
	$('.divideDivClass').css('display','none');
	$('.divideDivResult').css('display','block');
	$('#modifyButton').css('display','none');
};	
///////////////////////////////////////////////
//vo, dao, controller service  userclasslistcontroller로 씀
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
	var nick_array = new Array();
	var listCnt = 12;
	var creator_class; 
function creatorClass(){
	var  search_text = $('#search_text').val();
	  var url = '<%=request.getContextPath()%>/classList/findCreatorClass'; 
	  var cid = ""
	  var params = {"CCls":'test100'}; 
	  $.ajax({
		 	url : url,
			data : params,
			success:function(r){
				var rr=$(r);
				$('.divideDivResult').html('');
				var classDiv = '';
				rr.each(function(idx){
					classNo_arry[idx] = rr[idx].class_no;
	 				className_arry[idx]= rr[idx].class_name;
	 			 	classAddr1_arry[idx]= rr[idx].class_addr1;
	 			 	classPrice_arry[idx]= rr[idx].class_price;
	 			 	classThumb_arry[idx]= rr[idx].class_thumb;
	 			 	classTag_arry[idx]= rr[idx]. class_tag;
	 			 	class_content_arry[idx]= rr[idx].class_content;
	 			 	category_name[idx]= rr[idx].category_name;
	 			 	startDate_arry[idx]=rr[idx].start_date;
	 			 	nick_array[idx]=rr[idx].nick;
	 			 	console.log(className_arry[idx])
				if( idx <= (listCnt-1) ){	
					
					classDiv  = '<div class="class_div">';
	 			 	classDiv += '<div class="img_div">';
					classDiv += '<a href="<%=request.getContextPath()%>/classDetailView?no=' + classNo_arry[idx] + '" target="">'
					classDiv +=	'<img class="img_size" src="'+classThumb_arry[idx]+'">';
					classDiv += '</a>'
					classDiv += '</div>';
					classDiv +=	'<div class="info_div">';
					classDiv += '<ul>';
					classDiv += '<li><div>'+category_name[idx]+'</div></li>';
					classDiv += '<li>'+className_arry[idx]+'</li>';
					classDiv +=	'<li>'+classTag_arry[idx]+'</li>'
					classDiv +=	'<li>'+nick_array[idx]+'</li>';
					classDiv +=	'<li>'+classPrice_arry[idx]+'원</li>';
					classDiv += '</ul>';
					classDiv +='</div>';
					classDiv +='</div>';
					$('.divideDivResult').append(classDiv);
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
						classDiv += '<a href="<%=request.getContextPath()%>/classDetailView?no=' + classNo_arry[idx] + '" target="">'
						classDiv +=	'<img class="img_size" src="'+classThumb_arry[idx]+'">';
						classDiv += '</a>'
						classDiv += '</div>';
						classDiv +=	'<div class="info_div">';
						classDiv += '<ul>';
						classDiv += '<li><div>'+category_name[idx]+'</div></li>';
						classDiv += '<li>'+className_arry[idx]+'</li>';
						classDiv +=	'<li>'+classTag_arry[idx]+'</li>'
						classDiv +=	'<li>'+nick_array[idx]+'</li>';
						classDiv +=	'<li>'+classPrice_arry[idx]+'원</li>';
						classDiv += '</ul>';
						classDiv +='</div>';
						classDiv +='</div>';
						$('.divideDivResult').append(classDiv);
						$('.no-result-txt').hide(); // 결과 없음 내용 숨기기
						$('.more').show(); // 더보기 버튼 보이기
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
</script>

<style>
#myChannelMainDiv{
	width:1200px;
	margin:0 auto;
	height:800px;
	padding-top:20px;
}
.divideDiv{
	width:100%;
	height:420px;
}
.divideDiv div{
	float:left;
}
.creatorImgDiv{background-color:lightblue;
	border-radius:200px;
	width:400px;
	height:400px;
	margin: 0px 0px 0px 30px;
	overflow: hidden;
}
#creatorNameDiv{background-color:;
	width:400px;
	height:120px;
	margin:160px 350px 0px 0px;
	float:right;
	padding-left: 50px;
}
#creatorNameDiv>ul>li{border:;
	text-align:right;
	font-size:2em;
	color:gray;
	font-weight: 500;
	line-height: 55px;
	width:270px;
}
#creatorNameDiv>ul>li:nth-child(1){
	border-bottom:3px solid lightgray;
}
#myChannelMenuDiv>ul>li{border-top:1px dotted lightgray;
	border-bottom:1px dotted lightgray;
	width:33.3%;
	line-height:45px;
	height:50px;
	text-align: center;
	float:left;
}
#myChannelMenuDiv>ul>li{
	color:gray;
	font-weight:500;
	font-size:1em; 
	cursor: pointer;
}
#myChannelMenuDiv>ul>li:hover{
	border-radius:8px;
	background-color: #FF385C;
	font-weight:500;
	
}
#myChannelMenuDiv>ul>li:hover{
	color: white;
}
#myChannelMenuDiv>ul{
	width:100%;
	height:50px;
	
}
#creatorNameDiv span{
	color:#FF385C;
	font-size:0.6em;
	font-weight:500;
}
.divideDivProfile{background-color:;
	width:100%;
	height:300px;
}
.divideDivClass{border:1px dotted gray;
	display:none;
	width:100%;
	height:310px;
}
.divideDivResult{border:1px dotted gray;
	display:none;
	width:100%;
	height:310px;
}
.buttons{
	width:150px;
	height:30px;
	background-color: white;
	border:1px dotted gray;
	border-radius:8px;
	float:right;
	margin-left:10px;
}
.buttons:hover{
	color:white;
	background-color:#FF385C;
	cursor: pointer;
}
 #modifyButton{
}
</style>
<script>
	
</script>
<div id="myChannelMainDiv">
	<div class="divideDiv">
		<div class="creatorImgDiv"><img src="https://sung3moon.synology.me:49583/aa.png"></div>
		<div id="creatorNameDiv">
			<ul>
				<li>${creatorId}님 </li>
				<li id="creator_name"><span>Creator ${creatorNick}</span></li>
				
			</ul>
		</div>
	</div>
	<div id="myChannelMenuDiv">
		<ul>
			<li id="summerNote" onclick="summernote()">크리에이터 프로필</li>
			<li id="creatorsClass" onclick="creatorClass()">개설 클래스</li>
			<li id="ClassResult" onclick="resultChange()">클래스 결과물</li>
		</ul>
	</div>
	<div class="divideDivProfile">
		<div id="summer"></div>
	</div>
	<div class="divideDivClass">
		<div id=""></div>
	</div>
	<div class="divideDivResult" >
		<div id=""></div>
	</div>
</div>
<div><input class="buttons" type="button" id="modifyButton" value="등록"></div>