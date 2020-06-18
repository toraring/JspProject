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
String pass = request.getParameter("pass");
String license = request.getParameter("license");
%>
<h3> 결과값 출력 </h3>
이름: <%=name %><br>
비밀번호: <%=pass %><br>
운전면허: <%=license == null?"없음":"운전면허있음." %>

</body>
</html>