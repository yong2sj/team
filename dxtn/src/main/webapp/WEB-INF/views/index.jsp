<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>(주)디엑스티앤</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <link rel="stylesheet" href="resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/css/style.css">
    <link rel="stylesheet" href="resources/font/IBMPlexSansKR-Regular.ttf">
    <link rel="shortcut icon" href="resources/img/icon.png" type="icon">
</head>
<body>
    <div class="navbar-nav menubar" style="z-index:5;">
        <div class="img">
            <a href="#"><img src="resources/img/logo.jpeg" alt="logo"></a>
        </div>
        <ul class="nav navbar-nav menu">
            <li class="active"><a href="#home">HOME</a>
            </li>
            <li><a href="#about">ABOUT</a>
            </li>
            <li><a href="#vision">기업비전</a>
            </li>
            <li><a href="#services">SERVICES</a>
            </li>
            <li><a href="#customer">주요고객</a>
            </li>
            <li><a href="#interview">인재채용</a>
            </li>
            <li><a href="#map">오시는 길</a>
            </li>
        </ul>
    </div>
   <container style="padding-top: 60px;">
        <div class="con col-12" id="home">
            <ul class="slides">
                <li><img src="resources/img/nav01.jpg" alt="image01" class="navImg"></li>
                <li><img src="resources/img/nav02.jpg" alt="image02" class="navImg"></li>
                <li><img src="resources/img/nav03.jpg" alt="image03" class="navImg"></li>
            </ul>
            <p class="controller" style="visibility: hidden;">
                <span class="prev">&lang;</span>
                <span class="next" style="right : 0">&rang;</span>
            </p>
        </div>
        <div class="con col-12" id="about">

        </div>
        <div class="con col-12" id="vision">

        </div>
        <div class="con col-12" id="services">

        </div>
        <div class="con col-12" id="customer">

        </div>
        <div class="con col-12" id="interview">
        	<div>
        		<h2>인재상</h2>
        		<p>능동적으로 도전적인 자세를 가진 인재</p>
        		<ul class="t_sub">
        			<li><div class="timg"><img alt="" src="resources/img/bus.png"/></div><div class="timg">도전</div></li>
        			<li><div class="timg"><img alt="" src="resources/img/bus.png"/></div><div class="timg">능동</div></li>        		
        			<li><div class="timg"><img alt="" src="resources/img/bus.png"/></div><div class="timg">성실</div></li>        		
        		</ul>        	
        	</div>
        	<hr style="border: 1px dotted silver;" width="98%">
        	<div>
        		<ul class="t_con">
        			<li style="clear: both;">
	        			<div style="float:left; margin-left: 500px; margin-right: 200px;"><img alt="" src="resources/img/bus.png"/></div><div style="float:left">도전적인 사람</div>
	        		</li>
	        		<li style="clear: both;">
	        			<div style="float:left; margin-left: 500px; margin-right: 200px;"><img alt="" src="resources/img/bus.png"/></div><div style="float:left;">도전적인 사람</div>
	        		</li>
	        		<li style="clear: both;">
	        			<div style="float:left; margin-left: 500px; margin-right: 200px;"><img alt="" src="resources/img/bus.png"/></div><div style="float:left;">도전적인 사람</div>
	        		</li>
        		</ul>        	
        	</div>
        	<hr style="border: 1px dotted silver;" width="98%">
        	<div style="text-align:center;">
        		<input type="button" value="모집공고" onclick="window.open('employ','모집공고')">
        	</div>
        </div>
        <div class="con col-12" id="map">
        	<h2>찾아오는길</h2>
        	<div id="daumRoughmapContainer1678086472122" class="root_daum_roughmap root_daum_roughmap_landing" style="z-index: 1"></div>
			<script charset="UTF-8" class="daum_roughmap_loader_script" src="https://ssl.daumcdn.net/dmaps/map_js_init/roughmapLoader.js"></script>
				<script charset="UTF-8">
					new daum.roughmap.Lander({
						"timestamp" : "1678086472122",
						"key" : "2dxqd",
						"mapWidth" : "800",
						"mapHeight" : "440"
					}).render();
				</script>
			<div style="text-align:center; margin-top:27px; padding-right:150px;">
				<div style="font-size: 18px;">&#124; 서울특별시 서대문구 서소문로21, 충정타워 6층 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#124; 대표번호 : 02-0000-0000</div>
			</div>
			<div id="ride">
			<table style="margin-top:10px; width:800px;">
				<tr>
					<td colspan="2">
						<h4 style="padding-top:10px; padding-left: 20px;">&#149; 찾아오시는길</h4>
						<hr style="border: 1px solid silver;"  width="98%">
					</td>
				</tr>
				<tr>
					<td style="width: 10%" >
						<img alt="" src="resources/img/subway.png">
					</td>
					<td>
						<ul>
							<li>5호선 9번출구</li>								
							<li>2호선 2번출구</li>								
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<hr style="border: 1px dotted silver;" width="98%">
					</td>
				</tr>
				<tr>
					<td style="width: 10%">
						<img alt="" src="resources/img/bus.png">
					</td>
					<td>
						<ul>
							<li>7017</li>
							<li>7017</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<hr style="border: 1px solid silver;" width="98%">
					</td>
				</tr>
			</table>
			</div>
        </div>
    </container>
    <!--<footer>
     ㄴㅇㄹㄴㅇㄹ
    </footer>-->
    <script>
        let slides = document.querySelector('.slides');
        let slideImg = document.querySelectorAll('.slides li');
        currentIdx = 0;
        slideCount = slideImg.length;
        prev = document.querySelector('.prev'); //이전 버튼
        next = document.querySelector('.next'); //다음 버튼
        slideWidth = 1520; //슬라이드이미지 넓이
        makeClone(); // 처음이미지와 마지막 이미지 복사 함수
        initfunction(); //슬라이드 넓이와 위치값 초기화 함수
        function makeClone() {
        let cloneSlide_first = slideImg[0].cloneNode(true);
        let cloneSlide_last = slides.lastElementChild.cloneNode(true);
        slides.append(cloneSlide_first);
        slides.insertBefore(cloneSlide_last, slides.firstElementChild);
        }
        function initfunction() {
        slides.style.width = slideWidth * (slideCount + 2) + 'px';
        slides.style.left = -slideWidth + 'px';
        }
        next.addEventListener('click', function () {
        //다음 버튼 눌렀을때
        if (currentIdx <= slideCount - 1) {
            //슬라이드이동
            slides.style.left = -(currentIdx + 2) * slideWidth + 'px';
            slides.style.transition = `${0.5}s ease-out`; //이동 속도
        }
        if (currentIdx === slideCount - 1) {
            //마지막 슬라이드 일때
            setTimeout(function () {
            //0.5초동안 복사한 첫번째 이미지에서, 진짜 첫번째 위치로 이동
            slides.style.left = -slideWidth + 'px';
            slides.style.transition = `${0}s ease-out`;
            }, 500);
            currentIdx = -1;
        }
        currentIdx += 1;
        move(currentIdx);
        });
        prev.addEventListener('click', function () {
        //이전 버튼 눌렀을때
        console.log(currentIdx);
        if (currentIdx >= 0) {
            slides.style.left = -currentIdx * slideWidth + 'px';
            slides.style.transition = `${0.5}s ease-out`;
        }
        if (currentIdx === 0) {
            setTimeout(function () {
            slides.style.left = -slideCount * slideWidth + 'px';
            slides.style.transition = `${0}s ease-out`;
            }, 500);
            currentIdx = slideCount;
        }
        currentIdx -= 1;
        move(currentIdx);
        });


        // 자동 슬라이드
 
        function move(currentIdx){
 
            let slides = document.querySelector('.slides');
            let slideImg = document.querySelectorAll('.slides li'); 
            currentIdx = 0;

            setInterval(function(){
                slides.style.transition = '3s';
                slides.style.transform = "translate3d(-"+1520*(currentIdx+1)+"px, 0px, 0px)";
 
                currentIdx++;
 
                if(currentIdx === 2){
                    currentIdx = -1;
                }
 
            },5000);
        }
        
        document.addEventListener("DOMContentLoaded",function(){
            move(currentIdx);
        });
    </script>
</body>
</html>