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
	http://localhost:8080/example1/el/exam01.jsp?name=hong&id=kkk �Է½� hongȭ�鿡 ���
	 --%>
	 �̸� : <%= request.getParameter("name") %><br>
	 �̸� : ${ param.name }<br>
	 ID : ${ param.id }<br>
</body>
</html>