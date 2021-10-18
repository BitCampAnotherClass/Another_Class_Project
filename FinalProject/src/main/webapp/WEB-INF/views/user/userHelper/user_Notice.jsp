<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE HTML>
<html>
<head>
   
<style>
.fagArea {
    position: relative;
    margin: 0 auto;
    max-width: 1180px;
    z-index: 1;
}
@media (max-width: 1200px)
.fagArea .fagCont {
    margin: 40px 20px 0 20px;
}

.fagArea .fagCont {
    margin-top: 40px;
}

td, div, p, li, dt, dd, input, textarea, select, h1, h2, h3, h4, h5 {
    font-weight: normal;
    word-break: break-all;
}


element.style {
}
ul, ol, li {
    list-style: none;
}
form, input, p, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd {
    margin: 0;
    padding: 0;
}
* {
    word-break: break-all;
    box-sizing: border-box;
}
user agent stylesheet
ul {
    display: block;
    list-style-type: disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
}
td, div, p, li, dt, dd, input, textarea, select, h1, h2, h3, h4, h5 {
    font-weight: normal;
    word-break: break-all;
}
<style>
body, table, input, select, textarea {
    font-family: NotoSans, "맑은 고딕", "Malgun Gothic", NanumGothic, Dotum, 돋움, gulim, 굴림, Helvetica, sans-serif;
    font-size: 13px;
    font-weight: normal;
    color: rgb(98, 96, 95);
}
</style>

 


	

	 
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="icon" type="image/x-icon" sizes="32x32" href="/images/common/favicon_32.png" />
<link rel="icon" type="image/x-icon" sizes="196x196" href="/images/common/favicon_196.png" />
<link rel="apple-touch-icon-precomposed" sizes="32x32"  href="/images/common/favicon_32.png">
<link rel="apple-touch-icon-precomposed" sizes="196x196" href="/images/common/favicon_196.png"> 

 
<title> FAQ | PaulBassett</title>

<link rel="stylesheet" href="/css/fonts.css?time=1634545175563" type="text/css" media="all" /> 
<link rel="stylesheet" href="/css/common.css?time=1634545175563" type="text/css" media="all" />
<link rel="stylesheet" href="/css/layout.css?time=1634545175563" type="text/css" media="all" />
<link rel="stylesheet" href="/css/swiper.css?time=1634545175563" type="text/css" media="all" /> 
<link rel="stylesheet" href="/css/slick.css?time=1634545175563" type="text/css" media="all" />
<link rel="stylesheet" href="/css/animate.css?time=1634545175563" type="text/css" media="all" />
<link rel="stylesheet" href="/css/content.css?time=1634545175563" type="text/css" media="all" />
<script src="/js/jquery-3.1.1.min.js"></script>
<script src="/js/imagesloaded.pkgd.js"></script>
<script src="/js/common.js"></script>
<script src="/js/ui.js?time=1634545175563"></script>
<script src="/js/jquery.mousewheel.js"></script>
<script src="/js/swiper.min.js"></script>
<script src="/js/slick.js"></script>

<script>
function _jssoCompleted(data, code){
	if (data != "") {
		 $.ajax({
			url : "/member/loginSSO.pb",
			data: {"data":data},
			type: "POST",
			dataType : "json",
			async: false,
			success : function(data) {
				var url = location.href;
				if (data.succeed) {
					window.location.reload(true);
				}else{
				}
			}
		});
	}
}
</script>	

<script type="text/javascript" src="https://sso.maeildo.com:3443/findCookie.jsp?j_sso_q=LMs%2Fs9vbTjSbIUPzqtZrCyNevg%2B0l5R9mt5gx7sHSq%2BjP9c8VaERUxg%2FUfXGRj36v7VoJtF1kB9TLqlLtqx21GpUeUJaMnh1Ulc3VEp3ZGt4VU5ESkEzemNYL05mdFQ4Y2JoQlpNZHorV3c9"></script>

	 
<script>
$(function(){
	$(".listStyleD li a").click(function(){
		if(!$(this).parent().hasClass("on")) {
			$(".listStyleD li").removeClass("on");
			$(".listStyleD li").find(".answerCont").slideUp();
			$(this).parent().addClass("on");
			$(this).parent().find(".answerCont").slideDown();
		} else {
			$(this).parent().removeClass("on");
			$(this).parent().find(".answerCont").slideUp();
		}
		return false;
	});
	
});
</script>
</head>
<body class="bgNone">
<div id="wrapper">
	    

		     

<script>
$(function(){
	
	if($("#mainWrap").length < 1){	
		$(window).scroll(function(){
			var scrollTop = $(this).scrollTop();
			if(scrollTop > 0){
				$("#headerWrap").addClass("on")
			}else{
				$("#headerWrap").removeClass("on")
			}
		});
	}
	$("#gnb>ul").bind("mouseenter focusin", function(){
		$(this).parents("#headerWrap").addClass("styleB");
		$("#gnb>ul").parent().addClass("on");
		return false;
	})
	.bind("mouseleave focusout" , function(){
		$(this).parents("#headerWrap").removeClass("styleB");
		$("#gnb>ul").parent().removeClass("on");
		return false;
	});
});
</script>

			<div class="fagCont">
			
							
					
					<ul class="listStyleD">
						<li><a href="#" class="answer"><span>Q</span>캡슐 커피의 카페인 함량은 어떻게 되나요? (돌체구스토 호환 캡슐)</a>
							<div class="answerCont">
								<span class="answer">A</span><p><span style="font-family: 나눔고딕, NanumGothic;">폴 바셋은 돌체구스토 호환 가능한 세가지 종류의 캡슐 커피가 있으며,</span></p><p><span style="font-family: 나눔고딕, NanumGothic;">캡슐 1개 추출에 따른 카페인 함량은 아래와 같습니다.</span></p><p><br></p><p><span style="font-family: 나눔고딕, NanumGothic;">- 룽고(120ml) 추출/ 시그니처 블렌드 1회 기준: 약 87mg, 싱글 오리진(과테말라, 브라질) 1회 기준: 약 121~124mg</span></p>
							</div>
						</li>
					</ul>
					
					<ul class="listStyleD">
						<li><a href="#" class="answer"><span>Q</span>커피 메뉴를 디카페인으로 변경할 수 있는 매장은 어디인가요?</a>
							<div class="answerCont">
								<span class="answer">A</span><p><span style="font-family: 나눔고딕, NanumGothic;">현재 폴 바셋 일부 매장에서 룽고를 제외한 커피 메뉴를 디카페인 옵션 변경으로 변경할 수 있으며, 추후 전 매장 옵션 확대를 계획 중에 있습니다.</span></p><p><span style="font-family: 나눔고딕, NanumGothic;">디카페인 옵션 변경 가능 매장 확인 경로는 아래와 같습니다.</span></p><p><br></p><p><span style="font-family: 나눔고딕, NanumGothic;">- 폴 바셋 App/홈페이지 &gt; 매장찾기 &gt; 옵션 선택 &gt; '디카페인' 선택 &gt; 내 위치와 가까운 순서로 매장 조회</span></p><p><span style="font-family: 나눔고딕, NanumGothic;">- 폴 바셋 App/홈페이지 &gt; What's New &gt; Notice &gt; '디카페인 변경 가능 매장' 게시글 클릭</span></p>
							</div>
						</li>
					</ul>
					
					<ul class="listStyleD">
						<li><a href="#" class="answer"><span>Q</span>커피 메뉴를 디카페인 옵션으로 변경 시 카페인 함량은 어떻게 되나요?</a>
							<div class="answerCont">
								<span class="answer">A</span><p><span style="font-family: 나눔고딕, NanumGothic;">현재 폴 바셋 일부 매장에서 디카페인 옵션 변경이 가능하며,&nbsp;</span></p><p><span style="font-family: 나눔고딕, NanumGothic;">룽고를 제외한 커피 메뉴를 디카페인 옵션 변경 시 카페인 함량은 아래와 같습니다.</span></p><p><br></p><p><span style="font-family: 나눔고딕, NanumGothic;">- Standard 사이즈 1잔 기준 약 5~10mg</span></p><p><span style="font-family: 나눔고딕, NanumGothic;">- Grand 사이즈 1잔 기준 약 10~15mg</span></p>
							</div>
						</li>
					</ul>
					
					<ul class="listStyleD">
						<li><a href="#" class="answer"><span>Q</span>첫 구매 쿠폰은 언제 발행 되나요?</a>
							<div class="answerCont">
								<span class="answer">A</span><p>멤버십 카드로 첫 구매 시 다음 날 첫 구매 무료음료쿠폰이 발행 됩니다.</p><p><br></p><p>- 신규회원에게만 1회 발행되며 탈퇴 후 재가입시에는 발행되지 않습니다.</p><p>- 미등록 멤버십 카드로 처음 구매한 경우, 7일 내에 회원계정에 카드를 등록하시면 다음 날 쿠폰이 발행 됩니다.</p><p>- 회원계정에 멤버십 카드로 구매 이력이 있는 경우 발행되지 않습니다.</p><p><br></p>
							</div>
						</li>
					</ul>
					
					<ul class="listStyleD">
						<li><a href="#" class="answer"><span>Q</span>크라운 적립 기준은 무엇인가요?</a>
							<div class="answerCont">
								<span class="answer">A</span><p>멤버십 카드의 충전금액으로 제조음료 (커피,음료)를 전액 결제 하는 경우, 메뉴 당 크라운이 1개 적립 됩니다.<br></p><p><br></p><p>-푸드, 상품, 아이스크림 구매 시 크라운이 적립되지 않습니다.</p><p>-쿠폰, 할인, 포인트적용 시, 세트메뉴 구매 시 크라운이 적립되지 않습니다.</p><p><br></p><p>&nbsp;</p>
							</div>
						</li>
					</ul>
					
					<ul class="listStyleD">
						<li><a href="#" class="answer"><span>Q</span>생일 쿠폰은 언제 발행 되나요?</a>
							<div class="answerCont">
								<span class="answer">A</span><p class="" style="margin: 0cm 0cm 0.0001pt; text-align: justify; font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><span style="font-size:9.0pt">생일 무료음료 쿠폰은 골드<span lang="EN-US" style="">, </span>플래티넘 회원님 대상으로 회원계정에 등록된 생일<span lang="EN-US" style=""> 7</span>일 전에 발행됩니다<span lang="EN-US" style="">.<o:p></o:p></span></span></p><p class="" style="margin: 0cm 0cm 0.0001pt; text-align: justify; font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><span lang="EN-US" style="font-size:9.0pt">&nbsp;</span></p><p class="" style="margin: 0cm 0cm 0.0001pt; text-align: justify; font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><span style="font-size:9.0pt">생일 당일을 포함하여 전<span lang="EN-US">, </span>후<span lang="EN-US"> 7</span>일 이내에 골드<span lang="EN-US">, </span>플래티넘
등급에 진입한 경우 다음날 생일 쿠폰이 발행됩니다<span lang="EN-US">.<o:p></o:p></span></span></p><p class="" style="margin: 0cm 0cm 0.0001pt; text-align: justify; font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><span lang="EN-US" style="font-size:9.0pt">(ex. 8/10 </span><span style="font-size:9.0pt">생일인 경우<span lang="EN-US">, 8/16</span>까지 기준 등급 승급 시 승급과 동시에
생일 쿠폰 발급<span lang="EN-US">)<o:p></o:p></span></span></p><p class="" style="margin: 0cm 0cm 0.0001pt; text-align: justify; font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><span lang="EN-US" style="font-size:9.0pt">&nbsp;</span></p><p class="" style="margin: 0cm 0cm 0.0001pt; text-align: justify; font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><span style="font-size:9.0pt">※ 생일 변경은 본인인증을 통해서만 가능하며<span lang="EN-US">, </span>생일쿠폰 발급한 이력이<span lang="EN-US"> 330</span>일 이내 있으면 재발급 되지 않으므로
유의 해주시기 바랍니다<span lang="EN-US">.<o:p></o:p></span></span></p><p>











<span style="font-size: 9pt; font-family: &quot;맑은 고딕&quot;;">※ 음력
생일이 등록되어 있는 경우<span lang="EN-US" style="">, </span>양력 변환일 기준으로 발행됩니다<span lang="EN-US" style="">.</span></span>&nbsp;</p>
							</div>
						</li>
					</ul>
					
					<ul class="listStyleD">
						<li><a href="#" class="answer"><span>Q</span>회원가입 시 본인인증 문자가 오지 않습니다.</a>
							<div class="answerCont">
								<span class="answer">A</span><p>본인인증 시도 시 문자가 오지 않는 경우, 아래를 확인 해주세요.</p><p><br></p><p>1) 입력한 정보가 정확한 지 확인</p><p>&nbsp; - 통신사에 가입된 정보와 일치한 정보 (법정생년월일, 회원 이름, 휴대폰 명의자가 일치해야 함) 를 입력 했는 지 확인 하세요.</p><p><br></p><p>2) 스팸번호 등록 확인</p><p>&nbsp; - 본인인증기관인 KCB 발송번호 (02-708-1000)가 수신 차단 , 스팸번호로 등록 되어 있는 지 확인 하세요.<br></p><p>&nbsp; - 스팸번호 등록은 본인이 직접 할 수도 있고, 스팸방지 프로그램에서 자동으로 등록하는 경우도 있습니다.</p><p><br></p><p>3) 통신사 부가 서비스 가입 여부 확인</p><p>&nbsp; - 번호도용 문자차단 / 휴대폰번호 도용 방지 서비스에 가입된 휴대폰은 발송 또는 수신이 불가능 합니다.</p><p>&nbsp; - 통신사 고객센터에 연락하여 서비스에 가입되어 있는 경우, 해지 후 다시 시도해 주세요.</p><p>&nbsp; &nbsp; (부가 서비스 해지 후 반영까지 약 24시간 소요 됩니다.)</p><p><br></p><p>4) 알뜰폰 가입 여부 확인</p><p>&nbsp; - 알뜰폰 사용자의 경우 본인인증 단계에서 이용중인 통신사 선택 시 '통신 3사'를 선택하지 마시고, '알뜰폰'을 선택하고 본인인증을 시도해야 합니다.</p>
							</div>
						</li>
					</ul>
					
					<ul class="listStyleD">
						<li><a href="#" class="answer"><span>Q</span>스틱커피의 카페인 함량은 어떻게 되나요?</a>
							<div class="answerCont">
								<span class="answer">A</span><p>폴 바셋은 언제 어디서나 즐길 수 있는 '시그니처 블렌드 스틱커피'가 있으며,</p><p>스틱커피 1개(2g) 이용에 따른 카페인 함량은 아래와 같습니다.</p><p><br></p><p>- 적정 용량의 물(150ml)에 스틱커피 1개(2g) 용해하여 음용한 기준: 약 98mg</p>
							</div>
						</li>
					</ul>
					
					<ul class="listStyleD">
						<li><a href="#" class="answer"><span>Q</span>캡슐 커피의 카페인 함량은 어떻게 되나요? (네스프레소 호환 캡슐)</a>
							<div class="answerCont">
								<span class="answer">A</span><p class="" align="left" style="margin: 0cm 0cm 0.0001pt; line-height: 1.5;" 맑은="" 고딕";"=""><span style="font-family: 나눔고딕, NanumGothic;"><span style="font-size: 14px;">폴 바셋은 네스프레소 호환 가능한 다섯 가지 종류의 캡슐 커피가 있으며,</span></span></p><p class="" align="left" style="margin: 0cm 0cm 0.0001pt; line-height: 1.5;" 맑은="" 고딕";"=""><span style="font-family: 나눔고딕, NanumGothic;"><span style="font-size: 14px;">캡슐 1개 추출에 따른 카페인 함량은 아래와 같습니다.</span></span></p><p class="" align="left" style="margin: 0cm 0cm 0.0001pt; line-height: 1.5;" 맑은="" 고딕";"=""><span style="font-family: 나눔고딕, NanumGothic;"><span style="font-size: 14px;"><br></span></span></p><p class="" align="left" style="margin: 0cm 0cm 0.0001pt; line-height: 1.5;" 맑은="" 고딕";"=""><span style="font-family: 나눔고딕, NanumGothic;"><span style="font-size: 14px;">- 에스프레소(40ml) 추출/ 시그니처 블렌드 1회 기준: 약 69mg, 싱글 오리진(브라질, 에티오피아, 과테말라, 콜롬비아) 1회 기준: 약 46~54mg</span></span></p>
							</div>
						</li>
					</ul>
					
					<ul class="listStyleD">
						<li><a href="#" class="answer"><span>Q</span>매장선택이 원활히 되지 않아요</a>
							<div class="answerCont">
								<span class="answer">A</span><p style="margin:0cm;margin-bottom:.0001pt"><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">고객님이 사용중인 기기의 위치정보를 확인하여 가장 가까운 매장을 알려드리고 있습니다<span lang="EN-US">.</span></span><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><o:p></o:p></span></p><p style="margin: 0cm 0cm 0.0001pt;"><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;">&nbsp;</span></p><p style="margin: 0cm 0cm 0.0001pt;"><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">위치가 조회되지 않는다면 휴대폰
설정을 확인 하세요<span lang="EN-US">.</span></span><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><o:p></o:p></span></p><p style="margin: 0cm 0cm 0.0001pt;"><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;">&nbsp;</span></p><p style="margin: 0cm 0cm 0.0001pt;"><span lang="EN-US" style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">&nbsp; 1)&nbsp; </span><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">설정<span lang="EN-US"> &gt; </span>개인정보보호<span lang="EN-US"> &gt; </span>위치서비스<span lang="EN-US"> &gt; '</span>켬<span lang="EN-US">'</span></span><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><o:p></o:p></span></p><p style="margin: 0cm 0cm 0.0001pt;"><span lang="EN-US" style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">&nbsp; 2)&nbsp; </span><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">설정<span lang="EN-US"> &gt; </span>폴
바셋 앱<span lang="EN-US"> &gt; </span>위치<span lang="EN-US"> &gt; </span>위치접근 허용<span lang="EN-US"> &gt; '</span>앱을 사용하는 동안<span lang="EN-US">' </span>체크</span><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><o:p></o:p></span></p><p style="margin: 0cm 0cm 0.0001pt;"><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;">&nbsp;</span></p><p style="margin: 0cm 0cm 0.0001pt;"><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">위와 같은 조치에도<span lang="EN-US">&nbsp;</span>매장 검색이 원활하지 않을 경우 아래 사항을 확인 해주시기 바랍니다<span lang="EN-US">.</span></span><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><o:p></o:p></span></p><p style="margin: 0cm 0cm 0.0001pt;"><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;">&nbsp;</span></p><p style="margin: 0cm 0cm 0.0001pt;"><span lang="EN-US" style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">&nbsp; 1)
Wifi&nbsp;</span><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">연결 사용중인 경우<span lang="EN-US">, Wifi Off &gt;&nbsp;</span>휴대폰 자체의 모바일 데이터<span lang="EN-US">&nbsp;On&nbsp;</span>하여<span lang="EN-US">&nbsp;LTE&nbsp;</span>통한 주문 시도</span><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><o:p></o:p></span></p><p style="margin: 0cm 0cm 0.0001pt;"><span lang="EN-US" style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;"><span 맑은="" ";="" font-size:="" "="">&nbsp; 2) </span><span style="font-size: 11pt;">지하철<span lang="EN-US">,&nbsp;</span>또는 지하에<span lang="EN-US">&nbsp;GPS&nbsp;</span>수신이 어려운 경우
지상에서 주문 시도</span></span><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><o:p></o:p></span></p><p style="margin: 0cm 0cm 0.0001pt;"><span lang="EN-US" style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;"><span 맑은="" ";="" font-size:="" "=""><span 맑은="" ";="" font-size:="" "="">&nbsp; 3) </span><span style="font-size: 11pt;">휴대폰 설정<span lang="EN-US">&nbsp;&gt;&nbsp;</span>절전모드<span lang="EN-US">&nbsp;&gt; CPU&nbsp;</span>속도 제한 해제 후 주문 시도</span></span></span><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><o:p></o:p></span></p><p style="margin: 0cm 0cm 0.0001pt;"><span lang="EN-US" style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">&nbsp; 4) GPS </span><span style="font-size: 11pt; font-family: &quot;맑은 고딕&quot;;">설정이 켜져 있음에도 불구하고<span lang="EN-US"> GPS </span>인식이 되지 않는 경우라면<span lang="EN-US">, </span>휴대폰<span lang="EN-US"> GPS </span>센서에 문제가 있거나<span lang="EN-US"> GPS </span>인식이 어려운 실내일 수 있으므로
다른 장소에서 시도</span><span lang="EN-US" style="font-size: 10pt; font-family: &quot;맑은 고딕&quot;;"><o:p></o:p></span></p><p><br></p><p><span style="font-family: 돋움,Dotum; font-size: 10pt;"><br></span></p><p><br></p>
							</div>
						</li>
					</ul>
					
				
				
			
			</div>
	 		<!-- paging -->
	 		
			<ul class="paging btnTop">
				
					<li class="btnL2"><a href="#"  onclick='return false'></a></li>
<li class="btnL"><a href='#'  onclick='return false'></a></li>
<li><strong>1</strong></li>
<li><a href="Faq.pb?page=2">2</a></li>
<li><a href="Faq.pb?page=3">3</a></li>
<li><a href="Faq.pb?page=4">4</a></li>
<li><a href="Faq.pb?page=5">5</a></li>
<li class="btnR"><a href="Faq.pb?page=2" ></a></li>
<li class="btnR2"><a href="Faq.pb?page=6"></a></li>

				
			</ul>
		</div>
		<!-- //fagArea -->
		<!-- //내용영역 -->
	</div>
	
	    

		     

</body>
</html>