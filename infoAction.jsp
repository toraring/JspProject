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
//1. 파라메타 값 받기(엔코딩)
request.setCharacterEncoding("utf-8");
String name = request.getParameter("name");
String addr = request.getParameter("addr");

//2.입력데이터를 dto로 묶어서
infoDTO dto = new infoDTO();
dto.setName(name);
dto.setAddr(addr);


//3.메소드로 전달
infoDAO dao = new infoDAO();
dao.infoInsert(dto);

//4.출력 jsp로 이동.. url주소 바꿈
response.sendRedirect("infoList.jsp");


%>
</body>
</html>