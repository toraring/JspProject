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
String grade = request.getParameter("grade");
//lang은 다중선택이라서 '[]'하는거임'
String[] lang = request.getParameterValues("lang");
String like = request.getParameter("like");
String height = request.getParameter("height");
String weight = request.getParameter("weight");
String naljja = request.getParameter("naljja");
%>

<h3>***신상명세***</h3>
최종학력: <%= grade %> <br>
언어: <%
if(lang ==null)
{%>
<font color="cyan">나 아무것도 못해 </font>
<%}else
{
	for(int i =0; i < lang.length; i++)
	{%>
		&nbsp;&nbsp;&nbsp;<%=lang[i] %>
	<%}
}
%><br>
좋아하는 사람:&nbsp;&nbsp;&nbsp; <%= like %><br>
키: <%= height %> <br>
무게: <%= weight %> <br>
날짜: <%= naljja %> <br>
</body>
</html>