<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1> �Խñ� ��ȸ</h1>
<hr/>
<form action="updateBoard.do" method = "post">
<input name="seq" type="hidden" value="${getboard.seq}"/>
<table border="1">
	<tr>
		<td>����</td>
		<td><input name="title" type="text" value="${ getboard.title}"/></td>
	</tr>
	<tr>
		<td>�ۼ���</td>
		<td>${ getboard.writer}</td>
	</tr>
	<tr>
		<td>�ۼ� ����</td>
		<td>${ getboard.regDate }</td>
	</tr>
	<tr>
		<td>��ȸ��</td>
		<td><input type="text" name="hit" value="${ getboard.hit }"></td>
	</tr>
	<tr>
		<td>�� ����</td>
		<td><textarea name="content" cols="40" rows="10">
		${getboard.content}
		</textarea></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="update"/>
		</td>
	</tr>
</table>
<a href="insertBoard.html">add board</a>
<c:if test="${ user.role == 'Admin'}">
<a href="deleteBoard.do?seq=${getboard.seq}">delete</a>
</c:if>
<a href="getBoardList.do">list</a>
</form>
</body>
</html>