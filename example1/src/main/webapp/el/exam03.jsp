<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@
	page import="java.util.Map"
		 import="java.util.HashMap"
 %>
<% 
	Map<String, String> b = new HashMap<String, String>();
	b.put("isbn", "123-456");
	b.put("title", "EL�� �����ΰ�?");
	b.put("writer", "ȫ�浿");
	
	pageContext.setAttribute("book", b);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	ISBN : <%= b.get("isbn")%><br>
	EL ISBN : ${ book.isbn }<br>
	EL TITLE : ${ book.title }<br>
	
</body>
</html>