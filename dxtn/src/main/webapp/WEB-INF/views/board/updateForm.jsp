<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 내용</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="/boardScript.js"></script>
<body>
	<h2 style="text-align:center;">게시글 내용</h2>
	
	<form action="updateAction.dx" name='regForm' method="post">
	<input type="hidden" name="curentPg" value="${curentPg}"/>
	<input type="hidden" name="bno" value="${article.bno}"/>
	<table border="1" style="margin:0 auto; width:600px;">
	<tr>
		<th width="200">제목</th>
		<td width="400"><input type="text" name="bsubject" class="chk" title="제목" size="40" value="${article.bsubject}"/></td>
	</tr>
	<tr>
		<th width="200">작성자</th>
		<td width="400"><input type="text" name="bwriter" class="chk" title="작성자" size="40" value="${article.bwriter}"/></td>
	</tr>
	<tr>
		<th width="200">내용</th>
		<td width="400"><textarea name="bcontent" class="chk" title="내용" rows="20" cols="45">${article.bcontent}</textarea></td>
	</tr>
	<tr style="text-align:right;">
		<td colspan="2">
			<input type="button" value="글수정" id="submit1">&nbsp;&nbsp;&nbsp;
			<input type="button" onclick="location.href='boardList.dx?curentPg=${curentPg}'" value="글목록">
		</td>
	</tr>
	</table>
	</form>
	
</body>
</html>