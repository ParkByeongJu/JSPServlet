<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="book.BookVO"%>
<%
/*
	// 1. �ڹٺ���Ŭ���� + �迭
	BookVO book = new BookVO();
	book.setTitle("����");
	
	BookVO[] books = {book};
	
	pageContext.setAttribute("books", books);
*/
/*
	// 2. Map ��ü + �迭
	Map<String, String>book = new HashMap<>();
	book.put("title", "����");
	Map<>[] books = {book};
	pageContext.setAttribute("books", books);
*/

/*
	// 3. �ڹٺ���Ŭ���� + �ݷ���
	BookVO book = new BookVO();
	book.setTitle("����");
	List<BookVO> books = new ArrayList<>();
	book.add(book);
	pageContext.setAttribute("books", books);
*/
	//4. Map ��ü + �÷���
	Map<String, String> book = new HashMap<>();
	book.put("title", "����");
	List<Map<String, String>> books = new ArrayList<>();
	books.add(book);
	pageContext.setAttribute("books", books);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- ���� ��� --%>
	����/����?? ${ books[0].title }<br>
</body>
</html>