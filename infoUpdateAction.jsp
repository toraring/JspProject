<%@page import="info.model.infoDAO"%>
<%@page import="info.model.infoDTO"%>
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
//데이터 읽어서 dto로 넣기
String num = request.getParameter("num");
String name = request.getParameter("name");
String addr = request.getParameter("addr");

infoDTO dto = new infoDTO();
dto.setNum(num);
dto.setName(name);
dto.setAddr(addr);

//dao에 update메소드 받아오기
infoDAO dao = new infoDAO();
dao.infoUpdate(dto);

//목록으로 이동
response.sendRedirect("infoList.jsp");
%>

</body>
</html>