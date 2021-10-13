<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>  
<!-- summernote -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>


<script>
$(function(){
	$('#myChannelMenuDiv>ul>li').hover(function(){
			$(this).find('a').css('color','white')
	},function(){
			$('#myChannelMenuDiv>ul>li>a').css('color','gray')
	});
/////////////////////////////////////////	
	$("#json").click(function(){
		$.ajax({
			url:"creatorChannel/ajaxJson",
			success:function(result){
				//문자열을 전송받아 json형식으로 파싱한다.
				var jsonParsing = JSON.parse(result);
				
				$("#summernote").append("no="+jsonParsing.no+", username="+jsonParsing.username);
				$("#summernote").append(", tel="+ jsonParsing.tel+", addr="+ jsonParsing.addr);
				
			}
			
		});
	});

	
////////////////////////////////////////////
	$(document).ready(function() {
			  $('#summernote').summernote({
	  				height:800,
	  				placeholder:'클래스 소개글과 이미지를 넣어 작성하세요 ',
	  				lang: "ko-KR",	
	  				minHeight: 400, 
	  				maxHeight:400,
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
	function uploadSummernoteImageFile(file, editor) {
		data = new FormData();
		data.append("file", file);
		$.ajax({
			data : data,
			type : "POST",
			url : "/uploadSummernoteImageFile",
			contentType : false,
			processData : false,
			success : function(data) {
	        	//항상 업로드된 파일의 url이 있어야 한다.
				$(editor).summernote('insertImage', data.url);
			}
		});
	};
////////////////////////////////////////////////
});

</script>

<style>
#myChannelMainDiv{border:1px solid pink;
	width:1200px;
	margin:0 auto;
	height:1100px;
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
#myChannelMenuDiv>ul>li{border-top:3px solid lightgray;
	border-bottom:3px solid lightgray;
	width:33.3%;
	line-height:45px;
	height:50px;
	text-align: center;
	float:left;
}
#myChannelMenuDiv>ul>li>a{
	color:gray;
	font-weight:500;
	font-size:1.3em; 
}
#myChannelMenuDiv>ul>li:hover{
	border-radius:8px;
	background-color: #FF385C;
	font-weight:500;
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
.divideDivBottom{background-color:pink;
	width:100%;
	height:508px;
}
</style>
<script>
	
</script>
<div id="myChannelMainDiv">
	<div class="divideDiv">
		<div class="creatorImgDiv"><img src="https://sung3moon.synology.me:49583/aa.png"></div>
		<div id="creatorNameDiv">
			<ul>
				<li>버드세이지 플라워</li>
				<li id="creator_name"><span>Creator </span>장동민</li>
			</ul>
		</div>
	</div>
	<div id="myChannelMenuDiv">
		<ul>
			<li><a href="#" id="json">크리에이터 프로필</a></li>
			<li><a href="#">개설 클래스</a></li>
			<li><a href="#">클래스 결과물</a></li>
		</ul>
	</div>
	<div class="divideDivBottom">
		<div id="summernote"></div>
	
	</div>
</div>