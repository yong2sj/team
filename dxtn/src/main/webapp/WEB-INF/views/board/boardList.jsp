<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	table{
		 border-collapse : collapse;
	}
</style>
<meta charset="UTF-8">
<title>게시글 리스트</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="/boardScript.js"></script>

<jsp:include page="../header.jsp"></jsp:include>
	<h2 style="text-align:center;">게시글 리스트</h2>
	<p>
	<p>
	
	<br>
	<c:choose>
	<c:when test="${articles.size()==0 }">
	<table border="1" style="margin:0 auto; width:700px;">
	<tr><th style="text-align:center">게시글이 없습니다.</th></tr></table>
	</c:when>
	<c:when test="${articles.size()!=0 }">
		<table border="1" style="margin:0 auto; width:700px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>작성일</th>
				</tr>
			</thead>
			
			<tbody>
			<c:forEach items="${articles}" var="article">
				<tr>
				
					<td style="text-align:center;">${article.rnum}</td>
					<td style="text-align:center;" >
					<a href="javascript:getContent(${article.bno });" style="text-decoration: none; color: black; font-weight : 600">${article.bsubject}</a>
					</td>
					<td style="text-align:center;">${article.bwriter}</td>
					<td style="text-align:center;">${article.bregdate}</td>
				</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="5" style="text-align:center;">
						<c:forEach var="p" begin="1" end="${pageCnt}">
							<a href="boardList.dx?curentPg=${p}">${p}</a>
						</c:forEach>
					</td>
				</tr>
			</tfoot>
		</table>
		</c:when>
		</c:choose>
		<form action="" name="tForm" method="post">
		<input type="hidden" id="bno" name="bno" value="">
		<input type="hidden" name="curentPg" value="${curentPg}">
		</form>
		
		
	<table style="margin:0 auto; width:700px;">
		<tr>
			<td style="text-align:right;"><button style="color:white;margin-top: 30px;border:none; border-radius: 5px;padding : 10px 15px; background-color: #5CC7F7" onclick="location.href='boardWrite.dx?curentPg=${curentPg}'">글쓰기</button></td>
		</tr>
	</table>
	<jsp:include page="../footer.jsp"></jsp:include>	
</body>
</html>