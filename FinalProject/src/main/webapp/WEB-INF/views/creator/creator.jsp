<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Insert title here</title>
<!-- Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<!--<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumBarunGothic@latest/nanumbarungothicsubset.css">-->

<link href="css/common.css" rel="stylesheet" type="text/css"/>
<link href="css/creator/dashboard.css" rel="stylesheet" type="text/css"/>
<link href="css/creator/Chart.min.css" rel="stylesheet" type="text/css"/>
<!-- Script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.js"></script>
</head>
<body style="background-color:#eee;">

<style>
/* 통계 정보 */

#incomeInfo{
	width:100%;
}

.income-info-box{
	width:32%;
}

</style>

	<article id="container" style="background-color:#fff; width:950px; height:1200px; margin:0 auto; padding: 0 20px;">
		<section class="top-notice">
			<div class="top-notice-title">
				2021년 1월 (20년도 제2기) 부가세신고 관련하여 안내 드립니다. 2021.01.04
			</div>
		</section>
		<div class="income-top">
			<section id="incomeInfo">
				<div class="income-info-box">
					<div class="income-sub-title">수강생 문의/후기</div>
					<div class="income-info-view">
						<ul>
							<li>
								<p class="incomn-attr">답변대기 문의</p>
								<p class="income-val">2 건</p>
							</li>
							<li>
								<p class="incomn-attr">새로운 후기</p>
								<p class="income-val">5 건</p>
							</li>
						</ul>
					</div>
				</div>
				<div class="income-info-box">
					<div class="income-sub-title">예정 강의 현황</div>
					<div class="income-info-view">
						<ul>
							<li>
								<p class="incomn-attr">날짜</p>
								<p class="income-val">2021년 10월 16일</p>
							</li>
							<li>
								<p class="incomn-attr">수강인원</p>
								<p class="income-val">5/10 명</p>
							</li>
							<li>
								<p class="incomn-attr">수강률</p>
								<p class="income-val">50%</p>
							</li>
						</ul>
					</div>
				</div>
				<div class="income-info-box">
					<div class="income-sub-title">정산 관리</div>
					<div class="income-info-view">
						<ul>
							<li>
								<p class="incomn-attr">정산 예정</p>
								<p class="income-val">720,000원</p>
							</li>
							<li>
								<p class="incomn-attr">총 정산</p>
								<p class="income-val">12,340,000원</p>
							</li>
						</ul>
					</div>
				</div>
			</section>
		</div>
		
		<section id="incomeChart">
			<div class="income-chart-wrap">
				<div class="income-sub-title">클래스 수익 통계</div>
				<div class="income-chart-select">
					<ul>
						<li>수강건수</li>
						<li class="on">일별수익</li>
						<li>월별수익</li>
					</ul>
				</div>
				<div class="income-chart-view">
					<canvas id="chart2"></canvas>
				</div>
			</div>
		
		</section>
	
	
	
	</article>
	
<script src="js/Chart.min.js"></script>

<script>
	const MONTHS = [
	  '1월',
	  '2월',
	  '3월',
	  '4월',
	  '5월',
	  '6월',
	  '7월',
	  '8월',
	  '9월',
	  '10월',
	  '11월',
	  '12월'
	];

	function months(config) {
	  var cfg = config || {};
	  var count = cfg.count || 12;
	  var section = cfg.section;
	  var values = [];
	  var i, value;

	  for (i = 0; i < count; ++i) {
	    value = MONTHS[Math.ceil(i) % 12];
	    values.push(value.substring(0, section));
	  }

	  return values;
	}
	
	
	// chart2
	var ctx = document.getElementById('chart2').getContext('2d');
	var myChart = new Chart(ctx, {
	    type: 'bar',
	    data: {
	        labels: months({count: 12}),
	        datasets: [{
	            label: '만원',
	            data: [12, 19, 3.5, 5.7, 2.8, 30.3],
	            backgroundColor: 'rgba(255, 99, 132, 0.3)',
	            borderColor: 'rgba(255, 99, 132, 0.1)',
	            borderWidth: 1
	        }]
	    },
	    options: {
	    	maintainAspectRatio: false,
	        scales: {
	            y: {
	                beginAtZero: true
	            }
	        }
	    }
	});


</script>

