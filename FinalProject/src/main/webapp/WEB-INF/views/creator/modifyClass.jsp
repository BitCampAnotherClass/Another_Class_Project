<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
//현재 날짜 출력 테스트 콘솔에 뜸
var d = new Date();
console.log(d.getFullYear());
console.log(d.getMonth()+1);
console.log(d.getDate());
</script>
<div id="contents">
	<form>
		<div>
			<h1 class="notInclude">클래스 수정</h1>
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
		<input id="createClassSubmitButton" type="submit" value="수정 신청">
	</form>
</div>