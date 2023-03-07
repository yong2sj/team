<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<style>
	table{
		 border-collapse : collapse;
	}
</style>
<meta charset="UTF-8">
<title>게시글 쓰기</title>
</head>
<body>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="/boardScript.js"></script>
	<h2 style="text-align:center;">게시글쓰기</h2>
	<form action="employWrite" name="regForm" id="regForm" method="post">
		<input type="hidden" name="curentPg" value="${curentPg}">
		<table border="1" style="margin:0 auto; width:600px;">
		<tr>
			<th width="200">제목</th>
			<td width="400"><c:choose>
				<c:when test="${dto.bno==0 }">
					<input type="text" name="esub" title="제목" class="chk" size="40"/>
				</c:when>
				<c:when test="${dto.bno!=0 }">
					<input type="text" name="esub" title="제목" class="chk" size="40" value="[답글]"/>
					<input type="hidden" name="eno" value="${dto.bno}"/>
					<input type="hidden" name="eref" value="${dto.bref}"/>
					<input type="hidden" name="estep" value="${dto.bstep}"/>
					<input type="hidden" name="elevel" value="${dto.blevel}"/>
			</c:when>
			</c:choose></td>
		</tr>
		<tr>
			<th width="200">작성자</th>
			<td width="400"><input type="text" name="bwriter" title="작성자" class="chk" size="40"/></td>
		</tr>
		<tr>
			<th width="200">내용</th>
			<td width="400"><textarea name="bcontent" rows="20" title="내용" class="chk" cols="45"></textarea></td>
		</tr>
		
		<tr style="text-align:right;">
			<td colspan="2">
				<input type="button" value="글저장" id="submit1" style="color:white;border:none; border-radius: 5px;padding : 10px 15px; background-color: #5CC7F7">&nbsp;&nbsp;&nbsp;
				<input type="button" onclick="location.href='boardList.dx?curentPg=${curentPg}'" value="글목록" style="color:white;border:none; border-radius: 5px;padding : 10px 15px; background-color: #5CC7F7">
			</td>
		</tr>
		</table>
	</form>
	
</body>
</html>