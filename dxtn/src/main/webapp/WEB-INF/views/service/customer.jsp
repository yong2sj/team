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
   <div class="con col-12" id="customer">
        	<div style="float:left;width:20%;">
        		<img src="resources/img/cjtw.jpg" style="width:500px; height:766px;opacity:0.9; border-radius:10px;">
        	</div>
        	<div style="width:80%; float:right; padding-left:160px; padding-top:20px;">
				<p style="text-align:center; font-size:6em; font:oblique;">주요 고객</p><br/>
				<p style="text-align:center; font-size:3em;">우리는 같이 성장해 나갈 것 입니다.</p>
					<div class="slide slide_wrap" style="margin-top:80px;" >
      				<div class="slide_item item1"></div>
 		      			<div class="slide_item item2"></div>
    	  			<div class="slide_item item3"></div>
      				<div class="slide_item item4"></div>
      				<div class="slide_item item5"></div>
      				<div class="slide_item item6"></div>
    		  		<div class="slide_prev_button slide_button">◀</div>
      				<div class="slide_next_button slide_button">▶</div>
      				<ul class="slide_pagination"></ul>
  				</div>
  			</div>
   </div>
</body>
<footer>
	<%@ include file="../footer.jsp" %>
</footer>
</html>