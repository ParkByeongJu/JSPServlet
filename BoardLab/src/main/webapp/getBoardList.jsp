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
<h1>�Խñ� ���</h1>
<hr/>
<h3>${ user.name }�� ȯ���մϴ�. <a href="logout.do">logout</a></h3>
<table border="1">
	<tr>
		<td>No.</td><td>TITLE</td><td>WRITER</td><td>DATE</td><td>HIT</td>
	</tr>
	<c:forEach var="board" items="${ boardList }">
		<tr>
			<td>${ board.seq }</td>
			<td><a href="getBoard.do?seq=${ board.seq }"> ${ board.title }</a></td>
			<td>${ board.writer }</td>
			<td>${ board.regDate }</td>
			<td>${ board.hit }</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan="2">
		<a href="insertBoard.html">���� �ۼ�</a>
		</td>
	</tr>
</table>
<hr/>
<br/>
<form action="searchBoard.do" method = "post">
<table>
	<tr>
	<td>
	<input name="writer" type="text"/>
	</td>
	<td>
	<input name="�˻�" type="submit"/>
	</td>
	</tr>
</table>
</form>
</body>
</html>