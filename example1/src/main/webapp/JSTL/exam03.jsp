<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	String [] names = {"강길동", "홍길동", "윤길동", "박길동", "김길동"};
	pageContext.setAttribute("names", names);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	<c:forEach items="${ names }" var="name">
		${ name }
	</c:forEach><br><br>
	
	<c:forEach begin="0" end="${ fn:length(names)}" var="i">
		${names[i] }
	</c:forEach><br><br>
	
	<c:forEach begin="0" end="4" var="i">
		${names[i] }
	</c:forEach><br><br>
	
	${ names[0] }&nbsp;&nbsp;
	${ names[1] }&nbsp;&nbsp;
	${ names[2] }&nbsp;&nbsp;
	${ names[3] }&nbsp;&nbsp;
	${ names[4] }&nbsp;&nbsp;
	
	<br><br>년도선택 :
	<select>
		<c:forEach begin="1960" end="2023" var="year">
			<option>${ year }</option>
		</c:forEach>
	</select>
	<br><br>
	
	<c:forEach begin="1" end="10" var="i">
		${ i }&nbsp;&nbsp;
	</c:forEach>
	<br/>
	
</body>
</html>