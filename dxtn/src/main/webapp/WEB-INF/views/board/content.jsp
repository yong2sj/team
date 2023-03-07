
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
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

	<form action="" name="contentForm" method="post">
	<input type="hidden" name="curentPg" value="${curentPg}">
	<input type="hidden" name="bno" value="${article.bno}"/>
	<input type="hidden" name="bref" value="${article.bref}"/>
	<input type="hidden" name="bstep" value="${article.bstep}"/>
	<input type="hidden" name="blevel" value="${article.blevel}"/>
	<table border="1" style="margin:0 auto; width:600px;">
	<tr>
		<th width="200">제목</th>
		<td width="400"><input type="text" name="bsubject" size="40" value="${article.bsubject}" readonly="readonly"/></td>
	</tr>
	<tr>
		<th width="200">작성자</th>
		<td width="400"><input type="text" name="bwriter" size="40" value="${article.bwriter}" readonly="readonly"/></td>
	</tr>
	<tr>
		<th width="200">내용</th>
		<td width="400"><textarea name="bcontent" rows="20" cols="45" readonly="readonly">${article.bcontent}</textarea></td>
	</tr>
	<tr>
		<th width="200">작성일</th>
		<td width="400"><input type="text" name="bregdate" size="40" readonly="readonly" value="${article.bregdate}"/></td>
	</tr>
	<tr style="text-align:right;">
		<td colspan="2">
			<input type="button" value="글수정" id="up" class="pwdComp">&nbsp;&nbsp;&nbsp;
			<input type="button" value="글삭제" id="del" class="pwdComp">&nbsp;&nbsp;&nbsp;
			<input type="button" onclick="location.href='boardList.dx?curentPg=${curentPg}'" value="글목록">
		</td>
	</tr>
	</table>
	</form>
	
</body>
</html>