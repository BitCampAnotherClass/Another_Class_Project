<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<style>
	.main-ah3{
	margin:65px 30px 30px;
	text-align:left;
	color:#333;
	float:left;
	display: block;
    font-size: 32px;
    margin-block-start: 0.9rem;
    margin-block-end: 0.9rem;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    font-weight: bold;
}

.search-bbar{
	float:right;
	margin : 65px 30px 30px 0;
	width: 270px;
    height: 40px;
    outline: none;
    border: 1px solid #999;
    border-radius: 40px;
    padding: 0 15px;
    font-size: 15px;
}
.a{
	width:100%;
	height:100px;

}
.creator-homee{
	float:right;
	margin : 65px 30px 20px 0;
	background: #FF385C;
	text-align: center;
	
	border: 0;
    box-shadow: 0;
    display: block;

    padding: 1% 2.5%;
    font-size: 15px;
    text-transform: uppercase;
    text-transform: capitalize;
    font-weight: bold;
    background: #FF385C;
    color: #fff;
    cursor: pointer;
}
.creator-homee>a{
    font-size: 15px;
    text-transform: uppercase;
    text-transform: capitalize;
    font-weight: bold;
    background: #FF385C;
    color: #fff;
    cursor: pointer;
}
</style>


<div >
			<section class="main-review inner-lg">
			
			<div class="a">
				<h3 class="main-ah3">커뮤니티</h3>
		<li class="creator-homee"><a href="CommunityNewContent">게시글 작성</a></li>
		
					<input class="search-bbar" type="text" placeholder="#태그를 이용하여 검색하세요" />
					
				</div>	
		</section>
		</div>

<style>
body,html{font-size: 16px;}
*{padding:0;margin: 0;}
li{list-style: none;}

.wrap{}

.listWrap{
    width: 80%;
    margin:2% auto 0;

    display: flex;
    flex-wrap: wrap;
    border: 1px solid #eee;
    padding: 2%;
}

.listWrap .list{
    width: calc(100% / 4 - 7.5px);
    padding: 2%;
    box-sizing: border-box;
    
    border-radius: 5px;
    margin-bottom: 10px;
    box-shadow: 0 1px 0.4em rgba(0,0,0,0.2);
    transition: all 0.3s;
}
.listWrap .list:not(:nth-child(4n)){ 
    margin-right:10px;
}

.list-thum{
    height: 250px;
    overflow: hidden;
    position: relative;
}
.list-thum img{
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: auto;
    height: auto;
}

.list-user{
   margin: 10px 0;
   display: flex;
   align-items: center;
   border-bottom: 1px solid #eee;
   padding-bottom: 10px;
}
.list-user span{font-size: 1rem;}
.list-user span:last-child{
    margin-left: auto;
    font-size: 12px;
    color: cadetblue;
}

.list-email{
    font-size: 1rem;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}

.btn-more{
    border: 0;
    box-shadow: 0;
    display: block;
    margin:3% auto 2%;
    padding: 1.5% 5%;
    font-size: 15px;
    text-transform: uppercase;
    text-transform: capitalize;
    font-weight: bold;
    background: #FF385C;
    color: #fff;
    cursor: pointer;
}

.btn-more+p{
    text-align: center;
}

@media screen and (max-width:1024px){
    .listWrap{
        width: 90%;
    }
    .list-user span{font-size: 0.9rem;}
    .list-email{font-size: 0.9rem;}
}

@media screen and (max-width:769px){
    .listWrap{
        width: 95%;
    }
    .listWrap .list{
        width: calc(100% / 3 - 7.5px);
    }
    .listWrap .list:nth-child(4n){
        margin-right:10px;
    }
    .listWrap .list:nth-child(3n){ 
        margin-right:0;  
    }
}

@media screen and (max-width:500px){
    .listWrap{
        flex-wrap: wrap;
        flex-direction: column;
    }
    .listWrap .list{
        width: 100%;
        margin-right:0;
    }
    .listWrap .list:not(:nth-child(4n)),
    .listWrap .list:nth-child(4n){  
        margin-right:0; 
    }

    .list-email{
        margin-bottom: 2%;
    }
}
</style>

<div class="wrap">
  <ul class="listWrap"></ul>
</div>

<script>
var dataURL = 'https://api.tvmaze.com/search/shows?q=batman';
var _WRAP = document.querySelector('.wrap');
var _UL = document.querySelector('.listWrap');

var list = {
    init:function(){
        list.ajax();
    },
    listView:function(data){
        let _LI = document.createElement('li');
        _LI.className = 'list';
        _LI.innerHTML = `<a href="CommunityContentDetail"><div class="list-thum">
                            <img src="${data.show.image.medium}" 
                                 alt="img-${data.show.id}">
                         </div>
                         <div class="list-user">
                            <span>${data.show.name}</span>
                            <span>${data.show.premiered}</span>
                         </div>
                         <div class="list-email">${data.score}</div></a>`;
        return _LI;
    },
    more:function(length){
        //more button
        let _BTN = document.createElement('button');
        _BTN.className = 'btn-more';
        _BTN.innerText = '+ more';
        return length > 4 && _WRAP.appendChild( _BTN ); 
    },
    ajax:function(){
        $.ajax ({
            type : 'get',
            url: dataURL,
            datatype : 'json',
            success : function(data){    
            	var max = 4;
                let maxList = data.length / max;
                let start = 0;

                for(let i=start;i<max;i++){
                    _UL.appendChild( list.listView( data[i] ) );
                }

                var _P = document.createElement('p');
                _P.innerText='...List END'

                let cnt = 1;
                list.more(data.length).addEventListener('click',function(e){
                    cnt++;
                    if( Math.round(data.length / max) < cnt ){
                    	var target = e.target;
                        target.after(_P);
                        return false
                    };

                    for(let i=max*(cnt-1);i<max*cnt;i++){
                        _UL.appendChild( list.listView( data[i] ) );
                    }
                });
            },
            error : function(err){
                 console.log('err : ',err)
            }
        })
    },
}
        
list.init();


</script>