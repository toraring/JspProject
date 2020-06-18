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
<h2> post방식으로 읽기 </h2>
<%
//한글엔코딩
request.setCharacterEncoding("utf-8");
String msg1 = request.getParameter("msg");
%>
<b> 입력한 메세지는 </b><br>
<%= msg1 %> 입니다.

</body>
</html>