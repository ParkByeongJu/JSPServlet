<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<table style="width:100%" border="1">
	<tr>
		<td rowspan="2">�ΰ�</td>
		<td align="right">
			<span style="padding-right: 5px">���ã��</span>
			<c:if test="${ not empty loginUser }">
			[${ loginUser.name }(${ loginUser.id })�� �α�����...]
			</c:if>
		</td>
	</tr>
	<tr>
		<td>
			<c:if test="${ loginUser.type eq 'S' }">
				ȸ������ |
			</c:if>
			�Խ��� |
			<c:choose>
				<c:when test="${ empty loginUser }">
		 			ȸ������ |
		 			<a href="/WebTest/JSP/login/Login.jsp">�α��� |</a>
		 	</c:when>
		 	<c:otherwise>
		    	���������� | 
		    	<a href="/WebTest/JSP/login/logout.jsp"> �α׾ƿ�</a> 
		    </c:otherwise>
	    </c:choose>
		 </td>
	</tr>
</table>