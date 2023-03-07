<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>(주)디엑스티앤</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/style.css">
    <link rel="stylesheet" href="../resources/font/IBMPlexSansKR-Regular.ttf">
    <link rel="shortcut icon" href="../resources/img/icon.png" type="icon">
</head>
<body>
    <div class="navbar-nav menubar" style="z-index:5;">
        <div class="img">
            <a href="#"><img src="../resources/img/logo.jpeg" alt="logo"></a>
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
      	  <img alt="" src="../resources/img/mainimg.png" width="100%;"  height="747px;">
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
        			<li><div class="timg"><img alt="" src="../resources/img/bus.png"/></div><div class="timg">도전</div></li>
        			<li><div class="timg"><img alt="" src="../resources/img/bus.png"/></div><div class="timg">능동</div></li>        		
        			<li><div class="timg"><img alt="" src="../resources/img/bus.png"/></div><div class="timg">성실</div></li>        		
        		</ul>        	
        	</div>
        	<hr style="border: 1px dotted silver;" width="98%">
        	<div>
        		<ul class="t_con">
        			<li style="clear: both;">
	        			<div style="float:left; margin-left: 500px; margin-right: 200px;"><img alt="" src="../resources/img/bus.png"/></div><div style="float:left">도전적인 사람</div>
	        		</li>
	        		<li style="clear: both;">
	        			<div style="float:left; margin-left: 500px; margin-right: 200px;"><img alt="" src="../resources/img/bus.png"/></div><div style="float:left;">도전적인 사람</div>
	        		</li>
	        		<li style="clear: both;">
	        			<div style="float:left; margin-left: 500px; margin-right: 200px;"><img alt="" src="../resources/img/bus.png"/></div><div style="float:left;">도전적인 사람</div>
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
						<img alt="" src="../resources/img/subway.png">
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
						<img alt="" src="../resources/img/bus.png">
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
</body>
</html>