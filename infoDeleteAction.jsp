<%@page import="info.model.infoDAO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"/></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css"></link>

</head>
<body>
<%
String num = request.getParameter("num");

infoDAO dao = new infoDAO();
dao.infoDelete(num);
response.sendRedirect("infoList.jsp");
%>
</body>
</html>