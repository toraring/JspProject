<%@page import="sinsang.model.SinsangDTO"%>
<%@page import="sinsang.model.SinsangDAO"%>
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
	String birth = request.getParameter("birth");
	String blood = request.getParameter("blood");
	String hp = request.getParameter("hp1") + "-" + 
		request.getParameter("hp2") + "-" + 
		request.getParameter("hp3");
	
	SinsangDTO dto = new SinsangDTO();
	dto.setBirth(birth);
	dto.setBlood(blood);
	dto.setHp(hp);
	dto.setName(name);
	
	SinsangDAO dao = new SinsangDAO();
	dao.sinsangInsert(dto);
	
	response.sendRedirect("sinsangList.jsp"	);
	
	%>
</body>
</html>