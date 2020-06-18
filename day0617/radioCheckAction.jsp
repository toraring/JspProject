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
String season = request.getParameter("season");
String [] yasik = request.getParameterValues("yasik");
String nal = request.getParameter("naljja");

%>
<h3>데이터 읽어오기</h3>
좋아하는 계절: <%=season %><br>
좋아하는 야식: <br>&nbsp;
<%
if(yasik == null)
{%>
	<font color="blue">좋아하는 야식 없음.</font><br>
<%}else
{
	for(int i = 0; i < yasik.length; i++)
	{%>
		&nbsp;&nbsp;&nbsp; <b><%=yasik [i] %></b><br>
	<%}
}
%>

선택 날짜: <b><%=nal %></b>

</body>
</html>