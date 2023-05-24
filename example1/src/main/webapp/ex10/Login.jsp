<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="Login" class="ex10.LoginBean"/>
<jsp:setProperty name="Login" property="id"/>
<jsp:setProperty name="Login" property="password"/>
<%
if(Login.dbCheck()){
%>
<jsp:getProperty property="id" name="Login"/>님이 로그인 했습니다.
<%
}else {
%>
<jsp:forward page="Login.html"/>
<%
}
%>
</body>
</html>