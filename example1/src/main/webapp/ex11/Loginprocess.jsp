<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="Login" class="ex10.LoginBean"/>
<jsp:setProperty name="Login" property="id"/>
<jsp:setProperty name="Login" property="password"/>
<%
//넘겨받은 ID, PW로 확인
String id = request.getParameter("id");
String pw = request.getParameter("pw");

if(Login.dbCheck()){
	// 맞으면 세션에 id 저장하고,
	session.setAttribute("id", id);
	//3분 후 세션종료
	session.setMaxInactiveInterval(180);
	// 메인서비스 페이지로 이동
	response.sendRedirect("Main.jsp");
%>
<%
}else {
	// 아니면 에러 페이지로 이동
	response.sendRedirect("Error.html");
}
%>
</body>
</html>