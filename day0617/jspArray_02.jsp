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
String msg = "Hi Jsp";
int cnt = 0;
%>


<hr>
<%
String []str = {"red", "cyan", "magenta", "green", "gray", "yellow", "#ffcccc"};
%>

<table class="table table-bordered" style="width: 30%">
	<tr>
		<th> 번호 </th>
		<th> 색상 </th>		
	</tr>
	<%
	for(int i = 0; i<str.length; i++)
	{%>
		<tr>
			<th> <%= i+1 %> </th>
			<td bgcolor="<%= str[i] %>"> <%= str[i] %> </td>
		</tr>
	<%}
	%>

</table>
</body>
</html>