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
	#modifyClassMainDiv{background-color:pink; height:1500px; width:950px; margin:0 auto;}
    #modifyClassMainDiv>form>div:nth-child(1)>h1{color:gray; margin-left:50px;}
    #modifyClassMainDiv>form>div:nth-child(1)>ul>li{margin-left:50px;}
    #modifyInsertTitle{width:745px; height:55px;}
	#modifyPicInsertDiv{float:left; width:950px;}
   	#modifyPicInsertDiv>div{float:left}
   	#modifyPicInsertDiv>div:nth-child(2){background-color:red; width:650px; height:200px; }
    #modifyPicInsertDiv>div:nth-child(2)>ul{margin-top:50px; margin-left:100px;}
   	#modifyPicInsertDiv>div:nth-child(2)>ul>li{list-style-type:disc;}
   	#modifyPicInsertDiv>div:nth-child(3){float:left; background-color:blue; width:850px; margin-left:50px;}
   	#modifyPicInsertDiv>div:nth-child(3)>div{float:left;}
    #modifyPicInsertDiv>div:nth-child(3)>div:nth-child(1){background-color:white; margin-left:30px; margin-top:15px; }
    #modifyPicInsertDiv>div:nth-child(3)>div:nth-child(2){margin-left:480px; margin-bottom:10px;  margin-top:10px; height:35px; width:205px; border:1px solid pink;}
    #modifyInsertPicButton{color:gray; width:200px; height:35px; font-size:1.3em;}
    #modifyPicInsertSq{width:200px; height:200px; border:1px solid gray; margin-left:50px; float:left;}
    #modifyPicInsertSq>span{color:gray; line-height:200px; padding-left:50px;}
  	#modifyInsertSubject{ padding:0px; float:left; width:845px; height:295px; font-size:1.5em;}
  	#modifyInsertSubjectDiv>div{border:1px solid green; margin-left:50px; width:850px;height:300px; margin-top:10px; }
  	#modifyInsertSubjectDiv>ul{margin-left:50px;}
  	#modifyInsertDateDiv{float:left; background-color:lightgreen; width:950px; height:150px; margin-bottom:10px;}
  	#modifyInsertDateDiv>div>span{margin-left:60px; line-height:150px;}
  	#modifyInsertDateDiv>div:nth-child(1){border-left:1px solid red; width:150px; height:150px; float:left; margin-left:50px;}
   	#modifyInsertDateDiv>div:nth-child(2){background-color:yellow; height:150px; width:700px; float:left; border-left:3px solid gray; }
    #modifyInsertDateDiv>div:nth-child(2)>div:nth-child(1){border:1px solid blue; width:700px; height:55px; float:left; margin-top:5px;}
    #modifyInsertDateDiv>div:nth-child(2)>div:nth-child(1)>div{float:left;}
    #modifyNowDate{width:330px; height:50px; font-size:1.8em; text-align:right;}
    #modifyComingDate{width:330px; height:50px; font-size:1.8em; text-align:right; }
    #modifyInsertDateDiv>div:nth-child(2)>div:nth-child(2){border:1px solid blue; width:700px; height:55px;float:left; margin-top:30px}
    #modifyInsertDateDiv>div:nth-child(2)>div:nth-child(2)>div{float:left;}
    #modifySelectTime{width:330px; height:50px; font-size:1.8em; text-align:right;}
 	#modifySelectTime2{width:330px; height:50px; font-size:1.8em; text-align:right;}
 	#modifymodifyInsertPlaceDiv{background-color:blue; width:950px; height:150px;}
 	#modifymodifyInsertPlaceDiv>div:nth-child(1){border-left:1px solid red; width:150px; height:150px; float:left; margin-left:50px;}
 	#modifymodifyInsertPlaceDiv>div>span{margin-left:35px; line-height:150px;}
 	#modifymodifyInsertPlaceDiv>div:nth-child(2){background-color:yellow; height:150px; width:700px; float:left; border-left:3px solid gray; }
 	#modifymodifyInsertPlaceDiv>div:nth-child(2)>div:nth-child(1){border:1px solid green; height:55px; float:left; width:700px; margin-top:5px;}
 	#modifymodifyInsertPlaceDiv>div:nth-child(2)>div:nth-child(2){border:1px solid green; height:55px; width:700px; float:left; margin-top:30px;}
 	#modifymodifyInsertPlaceDiv>div:nth-child(2)>div:nth-child(2)>ul{margin-left:50px;}
 	#modifymodifyInsertPlaceDiv>div:nth-child(2)>div:nth-child(2)>ul>li{list-style-type:disc; line-height:25px;}
 	#modifyInsertPlace{width:464px; height:50px; font-size:1.3em; text-align:right; float:left; padding:0px;}
 	#modifyInsertPlaceButton{margin-left:20px; color:gray; width:200px; height:55px; font-size:1.3em;}
 	#modifyInsertExtraImgDiv{background-color:blue; width:950px; height:150px;}
 	#modifyInsertExtraImgDiv>div:nth-child(1){border-left:1px solid red; width:150px; height:150px; float:left; margin-left:50px;}
 	#modifyInsertExtraImgDiv>div>span{margin-left:35px; line-height:150px;}
 	#modifyInsertExtraImgDiv>div:nth-child(2){background-color:yellow; height:150px; width:700px; float:left; border-left:3px solid gray; }
 	#modifymodifyInsertFeeDiv{background-color:blue; width:950px; height:150px;}
 	#modifymodifyInsertFeeDiv>div:nth-child(1){border-left:1px solid red; width:150px; height:150px; float:left; margin-left:50px;}
 	#modifymodifyInsertFeeDiv>div>span{margin-left:50px; line-height:150px;}
 	#modifymodifyInsertFeeDiv>div:nth-child(2){background-color:yellow; height:150px; width:700px; float:left; border-left:3px solid gray; }
 	#modifymodifyInsertFeeDiv>div:nth-child(2)>div:nth-child(1){border:1px solid green; height:55px; margin-top:5px; width:700px; }
 	#modifymodifyInsertFeeDiv>div:nth-child(2)>div:nth-child(2){border:1px solid green; height:55px; margin-top:30px; float:left; width:700px;}
 	#modifyInsertFee{width:464px; height:50px; font-size:1.3em; text-align:right; float:left; padding:0px; }
 	#modifymodifyInsertFeeDiv>div:nth-child(2)>div:nth-child(2)>div:nth-child(1)>ul{margin-left:50px;}
 	#modifymodifyInsertFeeDiv>div:nth-child(2)>div:nth-child(2)>div:nth-child(1)>ul>li{list-style-type:disc;}
 	#modifymodifyInsertFeeDiv>div:nth-child(2)>div:nth-child(2)>div:nth-child(1){ float:left; border:1px solid red;  width:485px; height:50px;}
 	#modifymodifyInsertFeeDiv>div:nth-child(2)>div:nth-child(2)>div:nth-child(2){ float:left; border:1px solid red; width:205px; height:50px;}
 	#modifyInsertFeeButton{ width:200px; height:55px; font-size:1.3em;}
 	#modifyCreateClassSubmitButton{width:100px; height:40px; color:gray; height:55px; width:200px; margin-left:750px; font-size:1.3em;}
</style>
<div id="modifyClassMainDiv">
	<form>
		<div>
			<h1>클래스 수정</h1>
			<hr/>
			<ul>
				<li>클래스 타이틀 : <input type="text" placeholder="(필수)클래스 타이틀을 입력하세요" id="modifyInsertTitle"></li>
			</ul>
		</div>
		<hr/>
		<div id="modifyPicInsertDiv">
			<div id="modifyPicInsertSq">
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
				<div><input type="button" value="사진등록" id="modifyInsertPicButton"></div>
			</div>
		</div>
		<hr/>
		<div id="modifyInsertSubjectDiv">
			<ul>
				<li>클래스 설명</li>
			</ul>
			<div><textarea placeholder="내용을 입력해 주세요." id="modifyInsertSubject" cols="123" rows="20"></textarea></div>
		</div>
		<hr/>
		<div id="modifyInsertDateDiv">
			<div>
				<span>기간</span>
			</div>
			<div>
				<div>
					<div>
						<input type="date" id="modifyNowDate" name="modifyNowDate" value="2021-10-02"> ~&nbsp; 
					</div> 
					 
					<div>
						<input type="date" id="modifyComingDate" name="modifyComingDate" value="2021-10-02">
					</div>
				</div>	
				<div>
					<div>
						<input type="time" id="modifySelectTime" > ~&nbsp;
					</div>
					
					<div>
						<input type="time" id="modifySelectTime2">
					</div>
				</div>	
			</div>
		</div>
		<hr/>
		<div id="modifymodifyInsertPlaceDiv">
			<div>
				<span>클래스 장소</span>
			</div>
			<div>
				<div>
					<input type="text" placeholder="주소를 입력해 주세요." id="modifyInsertPlace">
					<input type="button" value="주소찾기" id="modifyInsertPlaceButton">
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
		<div id="modifyInsertExtraImgDiv">
			<div>
				<span>추가이미지</span>
			</div>
			<div>
				<div></div>
			</div>
		</div>
		<hr/>
		<div id="modifymodifyInsertFeeDiv">
			<div>
				<span>수강료</span>
			</div>
			<div>
				<div>
					<input type="text" id="modifyInsertFee" placeholder="수강료를 입력하세요.">
				</div>
				<div>
					<div>
						<ul>
							<li>가격 정책 설명</li>
							<li>가격 정책 설명</li>
						</ul>
					</div>
					<div><input type="button" id="modifyInsertFeeButton" value="확인"></div>
				</div>	
				<div>
				
				</div>
			</div>
		</div>
		<hr/>
		<input id="modifyCreateClassSubmitButton" type="submit" value="수정 신청">
		
	</form>
</div>