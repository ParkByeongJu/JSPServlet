<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
	http://localhost:8080/example1/el/exam01.jsp?name=hong&id=kkk 입력시 hong화면에 출력
	 --%>
	 이름 : <%= request.getParameter("name") %><br>
	 이름 : ${ param.name }<br>
	 ID : ${ param.id }<br>
</body>
</html>