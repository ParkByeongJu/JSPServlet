<%@page import="book.BookVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	BookVO b = new BookVO();
	b.setIsbn("123-456");
	b.setTitle("EL�̶� �����ΰ�");
	b.setWriter("ȫ�浿");
	// ��������(pageCintext)�� "book"�̶� �̸����� ������ BookVO��ü�� ���
	pageContext.setAttribute("book", b);
	
	//"book" ��ü ��ȸ
	BookVO book =(BookVO)pageContext.getAttribute("book");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	ISBN : <%= book.getIsbn()  %><br>
	ISBN : <%= ((BookVO)pageContext.getAttribute("book")).getIsbn() %><br>
	EL ISBN : ${ book.isbn }<br>
	EL TITLE : ${ book.title }<br>
</body>
</html>