<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>(주)디엑스티앤</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
</head>
<body>
   <container style="padding-top: 60px;">
        <div class="con col-12" id="home">
            <ul class="slides">
                <li><img src="resources/img/main1.jpg" alt="image01" class="navImg"></li>
                <li><img src="resources/img/main2.jpg" alt="image02" class="navImg"></li>
                <li><img src="resources/img/main3.jpg" alt="image03" class="navImg"></li>
            </ul>
            <p class="controller" style="visibility: hidden;">
                <span class="prev">&lang;</span>
                <span class="next" style="right : 0">&rang;</span>
            </p>
        </div>
		<!-- <div style="text-align:center;">
        		<input type="button" value="chat" class="btn btn-primary" onclick="window.open('/chat','채팅방')">
        	</div> -->
    </container>
  
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
    <script src="resources/js/slide.js"></script>
</body>
 <footer>
   		<%@ include file="./footer.jsp" %>
</footer>
</html>