<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
//현재 날짜 출력 테스트 콘솔에 뜸
var d = new Date();
console.log(d.getFullYear());
console.log(d.getMonth()+1);
console.log(d.getDate());
</script>
<style>
	#contents{background-color:pink; height:1500px; width:950px; margin:0 auto;}
    #contents>form>div:nth-child(1)>h1{color:gray; margin-left:50px;}
    #contents>form>div:nth-child(1)>ul>li{margin-left:50px;}
	#picInsertDiv{float:left; width:950px;}
   	#picInsertDiv>div{float:left}
   	#picInsertDiv>div:nth-child(2){background-color:red; width:650px; height:200px; }
    #picInsertDiv>div:nth-child(2)>ul{margin-top:50px; margin-left:100px;}
   	#picInsertDiv>div:nth-child(2)>ul>li{list-style-type:disc;}
   	#picInsertDiv>div:nth-child(3){float:left; background-color:blue; width:850px; margin-left:50px;}
   	#picInsertDiv>div:nth-child(3)>div{float:left;}
    #picInsertDiv>div:nth-child(3)>div:nth-child(1){background-color:white; margin-left:30px; margin-top:15px; }
    #picInsertDiv>div:nth-child(3)>div:nth-child(2){margin-left:480px; margin-bottom:10px;  margin-top:10px; height:35px; width:205px; border:1px solid pink;}
    #insertPicButton{color:gray; width:200px; height:35px; font-size:1.3em;}
    #picInsertSq{width:200px; height:200px; border:1px solid gray; margin-left:50px; float:left;}
    #picInsertSq>span{color:blue; line-height:200px; padding-left:50px;}
  	#insertSubject{ padding:0px; float:left; width:845px; height:295px; font-size:1.5em;}
  	#insertSubjectDiv>div{border:1px solid green; margin-left:50px; width:850px;height:300px; margin-top:10px; }
  	#insertSubjectDiv>ul{margin-left:50px;}
  	#insertDateDiv{float:left; background-color:lightgreen; width:950px; height:150px; margin-bottom:10px;}
  	#insertDateDiv>div>span{margin-left:60px; line-height:150px;}
  	#insertDateDiv>div:nth-child(1){border-left:1px solid red; width:150px; height:150px; float:left; margin-left:50px;}
   	#insertDateDiv>div:nth-child(2){background-color:yellow; height:150px; width:700px; float:left; border-left:3px solid gray; }
    #insertDateDiv>div:nth-child(2)>div:nth-child(1){border:1px solid blue; width:700px; height:55px; float:left; margin-top:5px;}
    #insertDateDiv>div:nth-child(2)>div:nth-child(1)>div{float:left;}
    #nowDate{width:330px; height:50px; font-size:1.8em; text-align:right;}
    #comingDate{width:330px; height:50px; font-size:1.8em; text-align:right; }
    #insertDateDiv>div:nth-child(2)>div:nth-child(2){border:1px solid blue; width:700px; height:55px;float:left; margin-top:30px}
    #insertDateDiv>div:nth-child(2)>div:nth-child(2)>div{float:left;}
    #selectTime{width:330px; height:50px; font-size:1.8em; text-align:right;}
 	#selectTime2{width:330px; height:50px; font-size:1.8em; text-align:right;}
 	#insertPlaceDiv{background-color:blue; width:950px; height:150px;}
 	#insertPlaceDiv>div:nth-child(1){border-left:1px solid red; width:150px; height:150px; float:left; margin-left:50px;}
 	#insertPlaceDiv>div>span{margin-left:35px; line-height:150px;}
 	#insertPlaceDiv>div:nth-child(2){background-color:yellow; height:150px; width:700px; float:left; border-left:3px solid gray; }
 	#insertPlaceDiv>div:nth-child(2)>div:nth-child(1){border:1px solid green; height:55px; float:left; width:700px; margin-top:5px;}
 	#insertPlaceDiv>div:nth-child(2)>div:nth-child(2){border:1px solid green; height:55px; width:700px; float:left; margin-top:30px;}
 	#insertPlaceDiv>div:nth-child(2)>div:nth-child(2)>ul{margin-left:50px;}
 	#insertPlaceDiv>div:nth-child(2)>div:nth-child(2)>ul>li{list-style-type:disc; line-height:25px;}
 	#insertPlace{width:464px; height:50px; font-size:1.3em; text-align:right; float:left; padding:0px;}
 	#insertPlaceButton{margin-left:20px; color:gray; width:200px; height:55px; font-size:1.3em;}
 	#insertExtraImgDiv{background-color:blue; width:950px; height:150px;}
 	#insertExtraImgDiv>div:nth-child(1){border-left:1px solid red; width:150px; height:150px; float:left; margin-left:50px;}
 	#insertExtraImgDiv>div>span{margin-left:35px; line-height:150px;}
 	#insertExtraImgDiv>div:nth-child(2){background-color:yellow; height:150px; width:700px; float:left; border-left:3px solid gray; }
 	#insertFeeDiv{background-color:blue; width:950px; height:150px;}
 	#insertFeeDiv>div:nth-child(1){border-left:1px solid red; width:150px; height:150px; float:left; margin-left:50px;}
 	#insertFeeDiv>div>span{margin-left:50px; line-height:150px;}
 	#insertFeeDiv>div:nth-child(2){background-color:yellow; height:150px; width:700px; float:left; border-left:3px solid gray; }
 	#insertFeeDiv>div:nth-child(2)>div:nth-child(1){border:1px solid green; height:55px; margin-top:5px; width:700px; }
 	#insertFeeDiv>div:nth-child(2)>div:nth-child(2){border:1px solid green; height:55px; margin-top:30px; float:left; width:700px;}
 	#insertFee{width:464px; height:50px; font-size:1.3em; text-align:right; float:left; padding:0px; }
 	#insertFeeDiv>div:nth-child(2)>div:nth-child(2)>div:nth-child(1)>ul{margin-left:50px;}
 	#insertFeeDiv>div:nth-child(2)>div:nth-child(2)>div:nth-child(1)>ul>li{list-style-type:disc;}
 	#insertFeeDiv>div:nth-child(2)>div:nth-child(2)>div:nth-child(1){ float:left; border:1px solid red;  width:485px; height:50px;}
 	#insertFeeDiv>div:nth-child(2)>div:nth-child(2)>div:nth-child(2){ float:left; border:1px solid red; width:205px; height:50px;}
 	#insertFeeButton{ width:200px; height:55px; font-size:1.3em;}
 	#createClassSubmitButton{width:100px; height:40px; color:gray; height:55px; width:200px; margin-left:750px; font-size:1.3em;}
</style>
<div id="contents">
	<form>
		<div>
			<h1 class="notInclude">클래스 개설</h1>
			<hr/>
			<ul>
				<li>클래스 타이틀 : <input type="text" placeholder="(필수)클래스 타이틀을 입력하세요" id="insertTitle"></li>
			</ul>
		</div>
		<hr/>
		<div id="picInsertDiv">
			<div id="picInsertSq">
				<span>200 * 200 (px)</span>
			</div>
			<div>
				<ul>
					<li>ddd</li>
					<li>ddd</li>
					<li>ddd</li>
					<li>ddd</li>
				</ul>
			</div>
			<div>
				<div>클래스 메인이미지</div>
				<div><input type="button" value="사진등록" id="insertPicButton"></div>
			</div>
		</div>
		<hr/>
		<div id="insertSubjectDiv">
			<ul>
				<li>클래스 설명</li>
			</ul>
			<div><textarea placeholder="내용을 입력해 주세요." id="insertSubject" cols="123" rows="20"></textarea></div>
		</div>
		<hr/>
		<div id="insertDateDiv">
			<div>
				<span>기간</span>
			</div>
			<div>
				<div>
					<div>
						<input type="date" id="nowDate" name="nowDate" value="2021-10-02"> ~&nbsp; 
					</div> 
					 
					<div>
						<input type="date" id="comingDate" name="comingDate" value="2021-10-02">
					</div>
				</div>	
				<div>
					<div>
						<input type="time" id="selectTime" > ~&nbsp;
					</div>
					
					<div>
						<input type="time" id="selectTime2">
					</div>
				</div>	
			</div>
		</div>
		<hr/>
		<div id="insertPlaceDiv">
			<div>
				<span>클래스 장소</span>
			</div>
			<div>
				<div>
					<input type="text" placeholder="주소를 입력해 주세요." id="insertPlace">
					<input type="button" value="주소찾기" id="insertPlaceButton">
				</div>
				<div>
					<ul>
						<li>주소 입력시 주의 사항</li>
						<li>주소 입력시 주의 사항</li>
					</ul>
				</div>	
			</div>
		</div>
		<hr/>
		<div id="insertExtraImgDiv">
			<div>
				<span>추가이미지</span>
			</div>
			<div>
				<div></div>
			</div>
		</div>
		<hr/>
		<div id="insertFeeDiv">
			<div>
				<span>수강료</span>
			</div>
			<div>
				<div>
					<input type="text" id="insertFee" placeholder="수강료를 입력하세요.">
				</div>
				<div>
					<div>
						<ul>
							<li>가격 정책 설명</li>
							<li>가격 정책 설명</li>
						</ul>
					</div>
					<div><input type="button" id="insertFeeButton" value="확인"></div>
				</div>	
				<div>
				
				</div>
			</div>
		</div>
		<hr/>
		<input id="createClassSubmitButton" type="submit" value="개설 신청">
	</form>
</div>	<hr/>
