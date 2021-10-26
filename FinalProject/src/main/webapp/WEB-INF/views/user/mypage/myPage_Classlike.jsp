<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<style>

	#likedClassList{width:90%;height:auto;overflow:auto;margin:0 auto;}/*height:auto;*//*좋아요크리에이터 리스트 감싸고 있는 div*/
	.card {
		  display: grid;
		  grid-template-columns: 270px;
		  grid-template-rows: 150px 50px 62px;
		  grid-template-areas: "image" "text" "stats";
		  margin: 15px 14px 15px 14px;
		  border-radius: 18px;
		  background: white;
		  /*box-shadow:0 0 8px rgba(0,0,0,0.3);*/
		  border: 1px solid #f0f0f0;
		  float:left;
		  text-align: center;
		}
		
		/*
		.card-text {
			  grid-area: text;
			  margin: 25px;
		}
		*/
		.card-stats {
		 	grid-area: stats; 
		}
		.card-image {
		  grid-area: image;
		  /*background: url("img1.jpg");*/
		  border-top-left-radius: 15px;
		  border-top-right-radius: 15px;
		  background-size: cover;
		}
		
		.card-text label {
		  display: inline-block;
		  font-size:28px;
		  text-align:center;
		  line-height:100%;
		  padding-top:11px;
		}
		.card-stats {
		  grid-area: stats; 
		  display: grid;
		  grid-template-columns: 1fr 1fr 1fr;
		  grid-template-rows: 1fr;
		
		  border-bottom-left-radius: 15px;
		  border-bottom-right-radius: 15px;
		  background: rgb(255, 7, 110);
		}
		.card-stats .stat {
		  display: flex;
		  align-items: center;
		  justify-content: center;
		  flex-direction: column;
		
		  color: white;
		  padding:10px;
		}
</style>
</head>

<%@ include file="myPageTop.jspf" %>

	<div id="likedClassList" class="bigTitle"><span class="h1style">♥ 클래스</span></div>
	<div >
				<div class="card">
				  <div class="card-image"></div>
				  <div class="card-text">
				   
				    <label>Post One</label>
				    
				  </div>
				  <div class="card-stats">
				    <div class="stat">
				      <div class="value">4<sup>m</sup></div>
				      <div class="type">read</div>
				    </div>
				    <div class="stat border">
				      <div class="value">5123</div>
				      <div class="type">views</div>
				    </div>
				    <div class="stat">
				      <div class="value">32</div>
				      <div class="type">comments</div>
				    </div>
				  </div>
			</div>
			<div class="card">
				  <div class="card-image"></div>
				  <div class="card-text">
				    
				    <label>Post One</label>
				  
				  </div>
				  <div class="card-stats">
				    <div class="stat">
				      <div class="value">4<sup>m</sup></div>
				      <div class="type">read</div>
				    </div>
				    <div class="stat border">
				      <div class="value">5123</div>
				      <div class="type">views</div>
				    </div>
				    <div class="stat">
				      <div class="value">32</div>
				      <div class="type">comments</div>
				    </div>
				  </div>
			</div>
			<div class="card">
				  <div class="card-image"></div>
				  <div class="card-text">
				  
				    <label>Post One</label>
				   
				  </div>
				  <div class="card-stats">
				    <div class="stat">
				      <div class="value">4<sup>m</sup></div>
				      <div class="type">read</div>
				    </div>
				    <div class="stat border">
				      <div class="value">5123</div>
				      <div class="type">views</div>
				    </div>
				    <div class="stat">
				      <div class="value">32</div>
				      <div class="type">comments</div>
				    </div>
				  </div>
			</div>

		
	</div>
	
	
	
<%@ include file="myPageBottom.jspf" %>