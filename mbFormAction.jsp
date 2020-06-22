<%@page import="myboard.model.MyBoardDAO"%>
<%@page import="myboard.model.MyBoardDTO"%>
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
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String subject = request.getParameter("subject");
String content = request.getParameter("content");
String sdate = request.getParameter("sdate");

MyBoardDTO dto = new MyBoardDTO();
dto.setName(name);
dto.setSubject(subject);
dto.setContent(content);
dto.setSdate(sdate);

MyBoardDAO dao = new MyBoardDAO();
dao.myboardInsert(dto);

response.sendRedirect("mbList.jsp");




%>
</body>
</html>