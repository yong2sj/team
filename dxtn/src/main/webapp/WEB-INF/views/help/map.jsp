<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>(주)디엑스티앤</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
</head>
<body>
    <div class="con col-12" id="map">
        	<h2 class="h2_t" style="margin-top: 0px;">찾아오는길</h2>
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
				<div style="font-size: 18px;">&#124; 서울특별시 서대문구 서소문로21, 충정타워 6층 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &#124; 대표번호 : 02-2088-0433</div>
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
							<li>2호선 2번출구</li>								
							<li>5호선 9번출구</li>								
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
							<li>일반 : 7017, 7013A, 7013B, 7011</li>
							<li>간선 : 172, 370, 472, 600, 602</li>
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
</body>
<footer>
	<%@ include file="../footer.jsp" %>
</footer>
</html>